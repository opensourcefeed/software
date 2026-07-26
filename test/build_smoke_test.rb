#!/usr/bin/env ruby
# Build smoke test — asserts the compiled _site output has the structure the
# directory/alternatives pages and their client-side search rely on.
#
# Run with:
#   bundle exec jekyll build
#   bundle exec ruby test/build_smoke_test.rb

require "nokogiri"

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

# --- Theming (dark mode wiring) ---
check(failures, "compiled CSS defines dark-mode custom properties") do
  css = File.read("#{SITE_DIR}/assets/css/main.css")
  raise "missing prefers-color-scheme: dark block" unless css.include?("prefers-color-scheme: dark")
  raise "missing --color-primary token" unless css.include?("--color-primary")
end

if failures.empty?
  puts "OK — #{software_count} software cards, #{alternatives_count} alternative cards, all checks passed."
  exit 0
else
  puts "FAILED (#{failures.size}):"
  failures.each { |f| puts "  - #{f}" }
  exit 1
end
