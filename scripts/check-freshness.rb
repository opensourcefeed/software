#!/usr/bin/env ruby
# frozen_string_literal: true
#
# Freshness check for _softwares/ (see docs/CONTENT-POLICY.md, "Freshness process").
#
#   ruby scripts/check-freshness.rb                 # report only (safe)
#   ruby scripts/check-freshness.rb --write         # also update latest_version + version_checked_at
#   ruby scripts/check-freshness.rb --links         # also check repository + website URLs
#   ruby scripts/check-freshness.rb --stale-days 120 vlc gimp   # options + optional slugs
#
# What it reports:
#   1. Version changes: the newest stable release tag in each page's `repository`
#      (via `git ls-remote`, no API token or rate limit) vs. its `latest_version`.
#      Pre-release tags (alpha/beta/rc/nightly/...) are ignored. Projects with
#      unusual tag names set `version_tag` in front matter: a regex the tag must
#      match; if it has a capture group, the group is the version string.
#   2. Stale pages: `last_modified_at` older than --stale-days (default 180).
#   3. With --links: repositories that no longer resolve and websites that
#      don't answer with HTTP 2xx/3xx (403 counted as "blocked", not broken).
#
# --write only touches `latest_version` and `version_checked_at`; it never changes
# `last_modified_at`, because a version refresh isn't a content change.

require "yaml"
require "date"
require "open3"
require "net/http"
require "uri"
require "timeout"

ROOT = File.expand_path("..", __dir__)
TODAY = Date.today

args = ARGV.dup
WRITE = args.delete("--write")
LINKS = args.delete("--links")
stale_days = 180
if (i = args.index("--stale-days"))
  stale_days = args[i + 1].to_i
  args.slice!(i, 2)
end
only = args

PRE = /(alpha|beta|[-.]rc|^rc|rc\d|preview|nightly|snapshot|canary|insider|dev\b|\.dev\d|[-.]pre|\db\d|unstable|weekly|cloud-|android|ios-|module\/|website@|backup|test|esr|build\d|draft|@)/i

def front_matter(path)
  text = File.read(path)
  raw = text[/\A---\s*\n(.*?)\n---/m, 1]
  [text, YAML.safe_load(raw, permitted_classes: [Date])]
end

def version_key(version)
  version.to_s.scan(/\d+/).map(&:to_i)
end

def latest_tag(repo, pattern)
  out, status = Timeout.timeout(90) do
    Open3.capture2e({ "GIT_TERMINAL_PROMPT" => "0" }, "git", "ls-remote", "--tags", "--refs", repo)
  end
  return [nil, :unreachable] unless status.success?

  tags = out.lines.filter_map { |l| l[%r{refs/tags/(.+)$}, 1]&.strip }
  regex = pattern && Regexp.new(pattern)
  candidates = tags.filter_map do |tag|
    if regex
      m = regex.match(tag) or next
      version = m.captures.first || tag[/\d+(?:[._]\d+)+/]
    else
      next if tag =~ PRE
      version = tag.tr("_", ".")[/\d+(?:\.\d+){1,3}/]
    end
    next unless version
    next if !regex && version_key(version).first.to_i > 3000

    [version.tr("_", "."), tag]
  end
  return [nil, :no_tags] if candidates.empty?

  [candidates.max_by { |v, _| version_key(v) }, :ok]
rescue Timeout::Error
  [nil, :timeout]
end

def http_status(url)
  uri = URI(url)
  5.times do
    res = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == "https", open_timeout: 10, read_timeout: 15) do |http|
      http.request(Net::HTTP::Get.new(uri, "User-Agent" => "OpenSourceFeed freshness check"))
    end
    return res.code.to_i unless res.is_a?(Net::HTTPRedirection)

    uri = URI.join(uri.to_s, res["location"])
  end
  310
rescue StandardError => e
  e.class.name
end

changes = []
problems = []
stale = []
link_issues = []

Dir[File.join(ROOT, "_softwares", "*.md")].sort.each do |path|
  slug = File.basename(path, ".md")
  next unless only.empty? || only.include?(slug)

  text, fm = front_matter(path)

  if (lm = fm["last_modified_at"]) && (TODAY - lm).to_i > stale_days
    stale << [slug, lm, (TODAY - lm).to_i]
  end

  repo = fm["repository"]
  if repo && fm["latest_version"] && !repo.include?("hg.mozilla.org") && repo =~ /\.git$|github|gitlab|codeberg|invent\.kde|videolan|blender\.org|savannah|funkwhale|torproject/
    (found, status) = latest_tag(repo, fm["version_tag"])
    if status != :ok
      problems << [slug, "version check failed (#{status})"]
    elsif found[0] != fm["latest_version"].to_s
      newer = (version_key(found[0]) <=> version_key(fm["latest_version"])) == 1
      changes << [slug, fm["latest_version"], found[0], found[1], newer]
      if WRITE && newer
        text = text.sub(/^latest_version:.*$/, %(latest_version: "#{found[0]}"))
                   .sub(/^version_checked_at:.*$/, "version_checked_at: #{TODAY}")
        File.write(path, text)
      end
    elsif WRITE
      File.write(path, text.sub(/^version_checked_at:.*$/, "version_checked_at: #{TODAY}"))
    end
  end

  next unless LINKS

  if repo && !repo.include?("hg.mozilla.org") && repo =~ /github|gitlab|codeberg|invent|videolan|blender|savannah|funkwhale|torproject/
    (_, status) = latest_tag(repo, nil)
    link_issues << [slug, "repository", repo, status] if status == :unreachable
  end
  if fm["website"]
    code = http_status(fm["website"])
    link_issues << [slug, "website", fm["website"], code] unless code.is_a?(Integer) && (code < 400 || code == 403)
  end
end

puts "# Freshness report (#{TODAY})\n\n"
puts "## Version changes (#{changes.size})"
changes.each do |slug, old, new, tag, newer|
  puts format("- %-20s %s → %s (tag %s)%s", slug, old, new, tag, newer ? (WRITE ? "  [updated]" : "") : "  [NOT newer: check version_tag]")
end
puts "- none" if changes.empty?
unless problems.empty?
  puts "\n## Version checks that failed (#{problems.size})"
  problems.each { |slug, msg| puts "- #{slug}: #{msg}" }
end
puts "\n## Pages not updated in #{stale_days}+ days (#{stale.size})"
stale.sort_by { |s| -s[2] }.each { |slug, lm, age| puts "- #{slug}: last_modified_at #{lm} (#{age} days)" }
puts "- none" if stale.empty?
if LINKS
  puts "\n## Link problems (#{link_issues.size})"
  link_issues.each { |slug, kind, url, code| puts "- #{slug} #{kind}: #{url} (#{code})" }
  puts "- none" if link_issues.empty?
end
puts "\nNext: review each change against the project's release notes, then run with --write." unless WRITE || changes.empty?
