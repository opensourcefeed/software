#!/usr/bin/env ruby
# Build smoke test — asserts the compiled _site output has the structure the
# directory/alternatives pages and their client-side search rely on.
#
# Run with:
#   bundle exec jekyll build
#   bundle exec ruby test/build_smoke_test.rb

require "nokogiri"
require "json"
require "yaml"
require "date"

SITE_DIR = File.expand_path("../_site", __dir__)
SOFTWARES_DIR = File.expand_path("../_softwares", __dir__)
ALTERNATIVES_DIR = File.expand_path("../_alternatives", __dir__)

failures = []

def check(failures, description)
  yield
rescue => e
  failures << "#{description}: #{e.message}"
end

unless Dir.exist?(SITE_DIR)
  abort "_site/ not found — run `bundle exec jekyll build` first."
end

software_count = Dir.glob("#{SOFTWARES_DIR}/*.md").size
alternatives_count = Dir.glob("#{ALTERNATIVES_DIR}/*.md").size

# --- Homepage (/) ---
index_doc = Nokogiri::HTML(File.read("#{SITE_DIR}/index.html"))

check(failures, "homepage has a search input") do
  raise "missing #directory-search" unless index_doc.at_css("#directory-search")
end

check(failures, "homepage has type filter chips (All / Open Source / Proprietary)") do
  chips = index_doc.css("[data-filter-type]")
  raise "expected 3 type chips, got #{chips.size}" unless chips.size == 3
end

check(failures, "homepage category filter is a <select>, not a chip row") do
  select = index_doc.at_css("[data-filter-category-select]")
  raise "missing category <select>" unless select
  raise "expected an <option> per category plus 'All categories'" if select.css("option").size < 2
end

check(failures, "homepage renders one card per software entry") do
  cards = index_doc.css("[data-software-card]")
  raise "expected #{software_count} cards, got #{cards.size}" unless cards.size == software_count
end

check(failures, "every homepage card has searchable data attributes") do
  index_doc.css("[data-software-card]").each do |card|
    raise "card missing data-title" if card["data-title"].nil? || card["data-title"].empty?
    raise "card missing data-type" if card["data-type"].nil? || card["data-type"].empty?
    raise "card missing data-category" if card["data-category"].nil? || card["data-category"].empty?
  end
end

check(failures, "homepage loads directory-filter.js") do
  raise "missing script tag" unless index_doc.at_css("script[src*='directory-filter.js']")
end

check(failures, "homepage ad slot is not the first element after the hero") do
  hero = index_doc.at_css(".hero")
  raise "missing .hero" unless hero
  first_sibling_classes = hero.next_element&.attr("class").to_s
  raise "ad-container immediately follows .hero" if first_sibling_classes.include?("ad-container")
end

# --- Open Graph / Twitter Card metadata ---
def check_social_meta(failures, doc, page_label, expect_image_substring: nil)
  %w[og:type og:site_name og:title og:description og:url og:image].each do |prop|
    check(failures, "#{page_label} has #{prop} meta tag") do
      tag = doc.at_css("meta[property='#{prop}']")
      raise "missing meta[property='#{prop}']" unless tag
      raise "#{prop} content is empty" if tag["content"].to_s.strip.empty?
    end
  end

  %w[twitter:card twitter:title twitter:description twitter:image].each do |name|
    check(failures, "#{page_label} has #{name} meta tag") do
      tag = doc.at_css("meta[name='#{name}']")
      raise "missing meta[name='#{name}']" unless tag
      raise "#{name} content is empty" if tag["content"].to_s.strip.empty?
    end
  end

  if expect_image_substring
    check(failures, "#{page_label} og:image points at its own logo") do
      image = doc.at_css("meta[property='og:image']")["content"]
      raise "expected og:image to include '#{expect_image_substring}', got #{image}" unless image.include?(expect_image_substring)
    end
  end
end

check_social_meta(failures, index_doc, "homepage")

jitsi_path = "#{SITE_DIR}/jitsi/index.html"
if File.exist?(jitsi_path)
  jitsi_doc = Nokogiri::HTML(File.read(jitsi_path))
  check_social_meta(failures, jitsi_doc, "a software page (jitsi)", expect_image_substring: "jitsi")
end

# --- Alternatives page (/alternative-to/) ---
alt_doc = Nokogiri::HTML(File.read("#{SITE_DIR}/alternative-to/index.html"))

check(failures, "alternatives page has a search input") do
  raise "missing #directory-search" unless alt_doc.at_css("#directory-search")
end

check(failures, "alternatives page renders one card per alternative entry") do
  cards = alt_doc.css("[data-software-card]")
  raise "expected #{alternatives_count} cards, got #{cards.size}" unless cards.size == alternatives_count
end

check(failures, "alternatives page loads directory-filter.js") do
  raise "missing script tag" unless alt_doc.at_css("script[src*='directory-filter.js']")
end

check(failures, "alternatives page ad slot comes after the card grid") do
  raw = File.read("#{SITE_DIR}/alternative-to/index.html")
  grid_pos = raw.index('class="card-grid"')
  ad_pos = raw.index('class="ad-container"')
  raise "missing .card-grid" unless grid_pos
  raise "missing .ad-container" unless ad_pos
  raise "ad-container appears before card-grid" unless ad_pos > grid_pos
end

# --- Social images: every og:image hosted on this site must exist, and none may be SVG ---
check(failures, "every og:image resolves to a built, non-SVG file") do
  bad = []
  Dir.glob("#{SITE_DIR}/**/index.html").each do |path|
    image = File.read(path)[/<meta property="og:image" content="([^"]+)"/, 1]
    next unless image

    bad << "#{path.delete_prefix(SITE_DIR)}: SVG og:image" if image.end_with?(".svg")
    local = image[%r{/software(/assets/.+)\z}, 1]
    bad << "#{path.delete_prefix(SITE_DIR)}: missing #{local}" if local && !File.exist?("#{SITE_DIR}#{local}")
  end
  raise bad.first(5).join("; ") unless bad.empty?
end

# --- Search snippets: titles <= 60 chars, meta descriptions <= 160 chars (use seo_title / shorter description) ---
check(failures, "every page title is <= 60 chars and meta description <= 160 chars") do
  bad = []
  Dir.glob("#{SITE_DIR}/**/index.html").each do |path|
    doc = Nokogiri::HTML(File.read(path))
    title = doc.at_css("title")&.text.to_s.strip
    desc = doc.at_css('meta[name="description"]')&.[]("content").to_s
    rel = path.delete_prefix(SITE_DIR)
    bad << "#{rel}: title #{title.length}" if title.length > 60
    bad << "#{rel}: description #{desc.length}" if desc.length > 160
  end
  raise bad.first(8).join("; ") unless bad.empty?
end

# --- Structured data: every JSON-LD block parses, and every category maps to a schema.org applicationCategory ---
check(failures, "every JSON-LD block on every page is valid JSON") do
  bad = []
  Dir.glob("#{SITE_DIR}/**/index.html").each do |path|
    Nokogiri::HTML(File.read(path)).css('script[type="application/ld+json"]').each do |script|
      JSON.parse(script.text)
    rescue JSON::ParserError => e
      bad << "#{path.delete_prefix(SITE_DIR)}: #{e.message[0, 80]}"
    end
  end
  raise bad.first(5).join("; ") unless bad.empty?
end

check(failures, "every software category has a category_schema mapping in _config.yml") do
  config = YAML.safe_load(File.read(File.expand_path("../_config.yml", __dir__)), permitted_classes: [Date])
  mapped = config.fetch("category_schema", {}).keys
  used = Dir.glob("#{SOFTWARES_DIR}/*.md").map { |f| File.read(f)[/^category:\s*(\S+)/, 1] }.compact.uniq
  missing = used - mapped
  raise "unmapped: #{missing.join(', ')}" unless missing.empty?
end

# --- Front matter data rules (see CONTENT-POLICY.md) ---
def front_matter(path)
  YAML.safe_load(File.read(path)[/\A---\s*\n(.*?)\n---/m, 1], permitted_classes: [Date])
end

check(failures, "software front matter follows the data rules") do
  config = YAML.safe_load(File.read(File.expand_path("../_config.yml", __dir__)), permitted_classes: [Date])
  licenses = config.fetch("license_urls", {}).keys + %w[Proprietary Source-available]
  bad = []
  Dir.glob("#{SOFTWARES_DIR}/*.md").each do |f|
    d = front_matter(f)
    slug = File.basename(f, ".md")
    bad << "#{slug}: missing developer" if d["developer"].to_s.empty?
    bad << "#{slug}: open source page without repository" if d["type"] == "open-source" && d["repository"].to_s.empty?
    bad << "#{slug}: license '#{d['license']}' not a known identifier (use license_note for detail)" unless licenses.include?(d["license"])
    bad << "#{slug}: latest_version without version_checked_at" if d["latest_version"] && !d["version_checked_at"]
  end
  raise bad.first(8).join("; ") unless bad.empty?
end

check(failures, "every alternative and roundup pick points at an existing software page") do
  slugs = Dir.glob("#{SOFTWARES_DIR}/*.md").map { |f| File.basename(f, ".md") }
  bad = []
  Dir.glob(File.expand_path("../_{alternatives,roundups}/*.md", __dir__)).each do |f|
    d = front_matter(f)
    (Array(d["alternatives"]) + Array(d["picks"])).each do |item|
      slug = item.is_a?(Hash) ? item["slug"] : item
      bad << "#{File.basename(f)} -> #{slug}" unless slugs.include?(slug)
    end
  end
  raise bad.first(8).join("; ") unless bad.empty?
end

# --- Theming (dark mode wiring) ---
check(failures, "compiled CSS defines dark-mode custom properties") do
  css = File.read("#{SITE_DIR}/assets/css/main.css")
  raise "missing prefers-color-scheme: dark block" unless css.include?("prefers-color-scheme: dark")
  raise "missing --color-primary token" unless css.include?("--color-primary")
end

# --- Freshness warnings (non-failing; act on them with scripts/check-freshness.rb) ---
warnings = []
Dir.glob("#{SOFTWARES_DIR}/*.md").each do |f|
  d = front_matter(f)
  slug = File.basename(f, ".md")
  if d["version_checked_at"] && (Date.today - d["version_checked_at"]).to_i > 60
    warnings << "#{slug}: version last checked #{d['version_checked_at']}"
  end
  if d["last_modified_at"] && (Date.today - d["last_modified_at"]).to_i > 365
    warnings << "#{slug}: content not updated since #{d['last_modified_at']}"
  end
end
unless warnings.empty?
  puts "Freshness warnings (#{warnings.size}) — run `ruby scripts/check-freshness.rb`:"
  warnings.first(15).each { |w| puts "  ! #{w}" }
end

if failures.empty?
  puts "OK — #{software_count} software cards, #{alternatives_count} alternative cards, all checks passed."
  exit 0
else
  puts "FAILED (#{failures.size}):"
  failures.each { |f| puts "  - #{f}" }
  exit 1
end
