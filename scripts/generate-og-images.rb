#!/usr/bin/env ruby
# frozen_string_literal: true
#
# Generates 1200x630 Open Graph / Twitter card images for pages that don't have
# a hand-made `featured_image`:
#
#   _softwares/*.md     (only those without featured_image) -> assets/images/og/softwares/<slug>.webp
#   _alternatives/*.md                                       -> assets/images/og/alternatives/<slug>.webp
#   _roundups/*.md                                           -> assets/images/og/roundups/<slug>.webp
#   landing pages (alternative-to/, best-open-source-software/) -> assets/images/og/pages/<name>.webp
#
# _includes/head.html picks these up automatically (featured_image still wins).
#
# Requirements: google-chrome (headless) and ImageMagick 7 (`magick`) with WebP.
#
# Usage:
#   ruby scripts/generate-og-images.rb              # generate missing images only
#   ruby scripts/generate-og-images.rb --force      # regenerate everything
#   ruby scripts/generate-og-images.rb vlc telegram # (re)generate only these slugs
#
# Cards are rendered in batches stacked vertically in one headless-Chrome
# screenshot, then cropped — one browser launch per batch instead of per image.

require "yaml"
require "date"
require "cgi"
require "fileutils"
require "tmpdir"

ROOT = File.expand_path("..", __dir__)
OUT_DIR = File.join(ROOT, "assets/images/og")
W = 1200
H = 630
BATCH = 12
CHROME = ENV.fetch("CHROME", "google-chrome")
BRAND_ICON = "https://www.opensourcefeed.org/assets/images/meta/icon.png"

force = ARGV.delete("--force")
only = ARGV.dup

config = YAML.safe_load(File.read(File.join(ROOT, "_config.yml")), permitted_classes: [Date])
CATEGORY_NAMES = config.fetch("category_names", {})

def front_matter(path)
  text = File.read(path)
  match = text.match(/\A---\s*\n(.*?)\n---\s*\n/m)
  return nil unless match

  YAML.safe_load(match[1], permitted_classes: [Date])
rescue Psych::Exception => e
  warn "  ! skipping #{File.basename(path)}: #{e.message}"
  nil
end

def load_collection(dir)
  Dir[File.join(ROOT, dir, "*.md")].sort.filter_map { |p| front_matter(p) }.to_h { |d| [d["slug"], d] }
end

SOFTWARES = load_collection("_softwares")
ALTERNATIVES = load_collection("_alternatives")
ROUNDUPS = load_collection("_roundups")

def h(text) = CGI.escapeHTML(text.to_s)

def logo_url(software)
  return nil unless software && software["logo"]

  path = File.join(ROOT, software["logo"].sub(%r{\A/}, ""))
  File.exist?(path) ? "file://#{path}" : nil
end

def logo_tile(software, size_class = "")
  url = logo_url(software)
  inner = if url
            %(<img src="#{h url}" alt="">)
          else
            %(<span class="mono">#{h software.to_h["title"].to_s[0]}</span>)
          end
  %(<div class="tile #{size_class}">#{inner}</div>)
end

def title_class(text)
  len = text.to_s.length
  if len > 40 then "t-s"
  elsif len > 26 then "t-m"
  else "t-l"
  end
end

def chips(slugs, max)
  items = slugs.map { |s| s.is_a?(Hash) ? s["slug"] : s }.filter_map { |s| SOFTWARES[s] }
  shown = items.first(max)
  html = shown.map do |sw|
    %(<div class="chip">#{logo_tile(sw, 'tile--xs')}<span>#{h sw['title']}</span></div>)
  end
  extra = items.size - shown.size
  html << %(<div class="chip chip--more">+#{extra} more</div>) if extra.positive?
  %(<div class="chips">#{html.join}</div>)
end

TYPE_LABELS = { "open-source" => "Open source", "proprietary" => "Proprietary", "source-available" => "Source available" }.freeze

def software_card(sw)
  kicker = [TYPE_LABELS[sw["type"]]]
  license = sw["license"].to_s
  kicker << license if license.length.between?(1, 22) && license != "Proprietary"
  platforms = Array(sw["platforms"]).first(6).join(" · ")
  category = CATEGORY_NAMES[sw["category"]] || sw["category"]
  <<~HTML
    <section class="og og--#{h sw['type']}">
      #{header_html("Software Directory")}
      <div class="main">
        #{logo_tile(sw, 'tile--xl')}
        <div class="text">
          <div class="kicker">#{h kicker.compact.join(' · ')}</div>
          <div class="title #{title_class(sw['title'])}">#{h sw['title']}</div>
          <div class="tagline">#{h sw['tagline']}</div>
        </div>
      </div>
      <div class="foot"><span>#{h category}#{platforms.empty? ? '' : " · #{h platforms}"}</span><span class="url">opensourcefeed.org/software/#{h sw['slug']}/</span></div>
    </section>
  HTML
end

def alternatives_card(alt)
  proprietary = SOFTWARES[alt["proprietary_slug"]] || { "title" => alt["title"] }
  count = Array(alt["alternatives"]).size
  <<~HTML
    <section class="og og--alternatives">
      #{header_html("Open Source Alternatives")}
      <div class="main">
        #{logo_tile(proprietary, 'tile--xl')}
        <div class="text">
          <div class="kicker">#{count} open source #{count == 1 ? 'alternative' : 'alternatives'} to</div>
          <div class="title #{title_class(proprietary['title'])}">#{h proprietary['title']}</div>
        </div>
      </div>
      #{chips(Array(alt['alternatives']), 4)}
    </section>
  HTML
end

def roundup_card(roundup)
  entries = if roundup["picks"]
              roundup["picks"].map { |p| p.is_a?(Hash) ? p["slug"] : p }
            else
              SOFTWARES.values.select { |s| s["category"] == roundup["category"] && s["type"] == "open-source" }.map { |s| s["slug"] }
            end
  <<~HTML
    <section class="og og--roundup">
      #{header_html("Best Open Source Software")}
      <div class="main main--text-only">
        <div class="text">
          <div class="kicker">#{entries.size} open source picks</div>
          <div class="title #{title_class(roundup['title'])}">#{h roundup['title']}</div>
          <div class="tagline">#{h roundup['tagline']}</div>
        </div>
      </div>
      #{chips(entries, 4)}
    </section>
  HTML
end

def landing_card(kicker, title, tagline, slugs)
  <<~HTML
    <section class="og og--landing">
      #{header_html('Software Directory')}
      <div class="main main--text-only">
        <div class="text">
          <div class="kicker">#{h kicker}</div>
          <div class="title t-m">#{h title}</div>
          <div class="tagline">#{h tagline}</div>
        </div>
      </div>
      #{chips(slugs, 4)}
    </section>
  HTML
end

def header_html(section)
  %(<div class="brand"><img src="#{BRAND_ICON}" alt=""><b>OpenSourceFeed</b><span>/ #{h section}</span></div>)
end

CSS = <<~CSS
  * { box-sizing: border-box; margin: 0; padding: 0; }
  body { width: #{W}px; background: #0b0f1a; font-family: "Noto Sans", "DejaVu Sans", sans-serif; color: #f3f4f6; }
  .og { position: relative; width: #{W}px; height: #{H}px; overflow: hidden; padding: 56px 72px; display: flex; flex-direction: column;
        background:
          radial-gradient(circle at 8% 0%, rgba(79,70,229,.55), transparent 48%),
          radial-gradient(circle at 100% 100%, rgba(5,150,105,.40), transparent 50%),
          linear-gradient(180deg, #0f1424, #0b0f1a); }
  .og::before { content: ""; position: absolute; inset: 0; pointer-events: none;
        background-image: linear-gradient(rgba(255,255,255,.035) 1px, transparent 1px), linear-gradient(90deg, rgba(255,255,255,.035) 1px, transparent 1px);
        background-size: 48px 48px; }
  .og > * { position: relative; }
  .brand { display: flex; align-items: center; gap: 12px; font-size: 26px; color: #e5e7eb; }
  .brand img { width: 36px; height: 36px; border-radius: 8px; }
  .brand b { font-family: "Sora", "Noto Sans", sans-serif; font-weight: 700; }
  .brand span { color: #9ca3af; }
  .main { flex: 1; display: flex; align-items: center; gap: 48px; }
  .text { min-width: 0; flex: 1; }
  .kicker { font-size: 26px; font-weight: 700; letter-spacing: .06em; text-transform: uppercase; margin-bottom: 14px; color: #a5b4fc; }
  .og--open-source .kicker { color: #34d399; }
  .og--proprietary .kicker { color: #fca5a5; }
  .og--source-available .kicker { color: #fcd34d; }
  .title { font-family: "Sora", "Noto Sans", sans-serif; font-weight: 800; line-height: 1.08; letter-spacing: -.02em; color: #fff;
           display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; }
  .t-l { font-size: 84px; } .t-m { font-size: 64px; } .t-s { font-size: 52px; }
  .tagline { margin-top: 18px; font-size: 30px; line-height: 1.35; color: #cbd5e1;
             display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; }
  .tile { flex: 0 0 auto; display: flex; align-items: center; justify-content: center; background: #fff; border-radius: 36px;
          box-shadow: 0 20px 50px rgba(0,0,0,.45), 0 0 0 1px rgba(255,255,255,.1); }
  .tile img { width: 72%; height: 72%; object-fit: contain; }
  .tile .mono { font-family: "Sora", "Noto Sans", sans-serif; font-weight: 800; color: #4f46e5; }
  .tile--xl { width: 220px; height: 220px; } .tile--xl .mono { font-size: 110px; }
  .tile--xs { width: 48px; height: 48px; border-radius: 12px; box-shadow: none; } .tile--xs .mono { font-size: 24px; }
  .foot { display: flex; justify-content: space-between; gap: 24px; font-size: 24px; color: #9ca3af; border-top: 1px solid rgba(255,255,255,.12); padding-top: 22px; }
  .foot span:first-child { white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }
  .url { color: #c7d2fe; white-space: nowrap; }
  .chips { display: flex; gap: 14px; flex-wrap: nowrap; overflow: hidden; }
  .chip { display: flex; align-items: center; gap: 12px; padding: 10px 20px 10px 10px; border-radius: 18px; background: rgba(255,255,255,.08);
          border: 1px solid rgba(255,255,255,.14); font-size: 26px; font-weight: 600; color: #f3f4f6; white-space: nowrap; }
  .chip--more { padding: 10px 20px; color: #9ca3af; }
CSS

jobs = []
SOFTWARES.each_value do |sw|
  next if sw["featured_image"]

  jobs << ["softwares/#{sw['slug']}", sw["slug"], -> { software_card(sw) }]
end
ALTERNATIVES.each_value { |a| jobs << ["alternatives/#{a['slug']}", a["slug"], -> { alternatives_card(a) }] }
ROUNDUPS.each_value { |r| jobs << ["roundups/#{r['slug']}", r["slug"], -> { roundup_card(r) }] }
jobs << ["pages/alternative-to", "alternative-to", lambda {
  landing_card("#{ALTERNATIVES.size} guides", "Open Source Alternatives to Popular Software",
               "Free, community-maintained replacements for the tools you use every day.",
               %w[gimp libreoffice firefox bitwarden])
}]
jobs << ["pages/best-open-source-software", "best-open-source-software", lambda {
  landing_card("#{ROUNDUPS.size} categories", "Best Open Source Software, by Category",
               "Curated picks in categories where open source tools stand on their own.",
               %w[vlc qbittorrent audacity krita])
}]

jobs << ["pages/self-hosted", "self-hosted", lambda {
  hosted = SOFTWARES.values.select { |s| s["self_hostable"] }
  landing_card("#{hosted.size} tools", "Self-Hosted Open Source Software",
               "Run your own file sync, chat, media, and AI on hardware you control.",
               %w[nextcloud jellyfin mattermost ollama])
}]

jobs.select! { |_, slug, _| only.include?(slug) } unless only.empty?
jobs.reject! { |out, _, _| File.exist?(File.join(OUT_DIR, "#{out}.webp")) } unless force || !only.empty?

if jobs.empty?
  puts "Nothing to generate (use --force to regenerate)."
  exit 0
end

puts "Generating #{jobs.size} image(s)…"
Dir.mktmpdir("og-images") do |tmp|
  jobs.each_slice(BATCH).with_index do |batch, bi|
    html_path = File.join(tmp, "batch#{bi}.html")
    File.write(html_path, <<~HTML)
      <!doctype html><html><head><meta charset="utf-8">
      <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Sora:wght@700;800&display=block">
      <style>#{CSS}</style></head><body>#{batch.map { |_, _, render| render.call }.join}</body></html>
    HTML

    shot = File.join(tmp, "batch#{bi}.png")
    ok = system(CHROME, "--headless=new", "--disable-gpu", "--no-sandbox", "--hide-scrollbars",
                "--allow-file-access-from-files", "--user-data-dir=#{File.join(tmp, 'profile')}",
                "--window-size=#{W},#{H * batch.size}", "--virtual-time-budget=8000",
                "--screenshot=#{shot}", "file://#{html_path}", out: File::NULL, err: File::NULL)
    abort "Chrome failed on batch #{bi}" unless ok && File.exist?(shot)

    batch.each_with_index do |(out, _, _), i|
      dest = File.join(OUT_DIR, "#{out}.webp")
      FileUtils.mkdir_p(File.dirname(dest))
      system("magick", shot, "-crop", "#{W}x#{H}+0+#{i * H}", "+repage", "-strip",
             "-quality", "82", "-define", "webp:method=6", dest) or abort "magick failed for #{out}"
      puts "  ✓ #{out}.webp"
    end
  end
end
