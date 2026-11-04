#!/usr/bin/env ruby
# frozen_string_literal: true
#
# Search Console report for the /software/ section, via the Search Console API
# with a service-account key (read-only scope). No gems needed.
#
# Setup:
#   export GSC_KEY_FILE=/path/outside/the/repo/service-account.json
#   (the service account must be added as a user on the Search Console property)
#
# Usage:
#   ruby scripts/gsc-report.rb pages   [--days 90]
#   ruby scripts/gsc-report.rb queries [--days 90] [--page /alternative-to/vlc/]
#   ruby scripts/gsc-report.rb compare --split 2026-09-25 [--days 37]
#   ruby scripts/gsc-report.rb sitemaps
#
#   pages     clicks/impressions/CTR/position per page, by impressions
#   queries   top queries (optionally for one page path under /software)
#   compare   equal-length windows before/after a change date, per page
#   sitemaps  submitted sitemaps and their last download / errors
#
# Common options: --site (default sc-domain:opensourcefeed.org),
#   --filter (default /software/), --limit (default 40).
# Search Console data lags 2-3 days; end dates default to 3 days ago.
# Page-level totals are more complete than query-level ones (rare queries are
# anonymised), so judge clicks from `pages`/`compare`, wording from `queries`.

require "json"
require "openssl"
require "net/http"
require "base64"
require "uri"
require "date"
require "optparse"

opts = { site: "sc-domain:opensourcefeed.org", filter: "/software/", days: 90, limit: 40 }
command = ARGV.shift
OptionParser.new do |o|
  o.on("--site SITE") { |v| opts[:site] = v }
  o.on("--filter PATH") { |v| opts[:filter] = v }
  o.on("--days N", Integer) { |v| opts[:days] = v }
  o.on("--limit N", Integer) { |v| opts[:limit] = v }
  o.on("--page PATH") { |v| opts[:page] = v }
  o.on("--split DATE") { |v| opts[:split] = Date.parse(v) }
end.parse!

abort File.read(__FILE__)[/^# Usage:.*?(?=^# Common)/m].gsub(/^# ?/, "") unless %w[pages queries compare sitemaps].include?(command)

key_file = ENV["GSC_KEY_FILE"] or abort "Set GSC_KEY_FILE to the service-account JSON key (keep it outside the repo)."
KEY = JSON.parse(File.read(key_file))

def b64(data) = Base64.urlsafe_encode64(data, padding: false)

def access_token
  now = Time.now.to_i
  header = b64({ alg: "RS256", typ: "JWT" }.to_json)
  claims = b64({ iss: KEY["client_email"], scope: "https://www.googleapis.com/auth/webmasters.readonly",
                 aud: KEY["token_uri"], iat: now, exp: now + 3600 }.to_json)
  signature = b64(OpenSSL::PKey::RSA.new(KEY["private_key"]).sign("SHA256", "#{header}.#{claims}"))
  res = Net::HTTP.post_form(URI(KEY["token_uri"]), grant_type: "urn:ietf:params:oauth:grant-type:jwt-bearer",
                                                    assertion: "#{header}.#{claims}.#{signature}")
  JSON.parse(res.body)["access_token"] or abort "Token request failed: #{res.body[0, 200]}"
end

TOKEN = access_token

def api(method, path, body = nil)
  uri = URI("https://searchconsole.googleapis.com/webmasters/v3/#{path}")
  req = method == :get ? Net::HTTP::Get.new(uri) : Net::HTTP::Post.new(uri)
  req["Authorization"] = "Bearer #{TOKEN}"
  req["Content-Type"] = "application/json"
  req.body = body.to_json if body
  res = Net::HTTP.start(uri.host, uri.port, use_ssl: true) { |http| http.request(req) }
  json = JSON.parse(res.body)
  abort "API error: #{json['error']['message']}" if json["error"]
  json
end

def query(opts, start, finish, dimensions, extra_filters = [])
  filters = [{ dimension: "page", operator: "contains", expression: opts[:filter] }] + extra_filters
  rows = []
  start_row = 0
  loop do
    body = { startDate: start.to_s, endDate: finish.to_s, dimensions: dimensions, rowLimit: 25_000,
             startRow: start_row, dimensionFilterGroups: [{ filters: filters }] }
    batch = api(:post, "sites/#{URI.encode_www_form_component(opts[:site])}/searchAnalytics/query", body)["rows"] || []
    rows.concat(batch)
    break if batch.size < 25_000

    start_row += 25_000
  end
  rows
end

def short(url) = url.sub(%r{\Ahttps?://[^/]+/software}, "")
def ctr(c, i) = i.zero? ? 0.0 : 100.0 * c / i

def totals(rows)
  c = rows.sum { |r| r["clicks"] }
  i = rows.sum { |r| r["impressions"] }
  p = i.zero? ? 0 : rows.sum { |r| r["position"] * r["impressions"] } / i
  [c.to_i, i.to_i, ctr(c, i), p]
end

finish = Date.today - 3
start = finish - opts[:days] + 1

case command
when "pages"
  rows = query(opts, start, finish, ["page"])
  c, i, r, p = totals(rows)
  puts "#{start} → #{finish}  clicks #{c}  impressions #{i}  CTR #{format('%.2f', r)}%  avg pos #{format('%.1f', p)}\n\n"
  rows.sort_by { |x| -x["impressions"] }.first(opts[:limit]).each do |x|
    puts format("%-48s %5d impr %4d clicks %6.2f%% pos %5.1f", short(x["keys"][0])[0, 48], x["impressions"], x["clicks"], x["ctr"] * 100, x["position"])
  end
when "queries"
  extra = opts[:page] ? [{ dimension: "page", operator: "equals", expression: "https://www.opensourcefeed.org/software#{opts[:page]}" }] : []
  rows = query(opts, start, finish, ["query"], extra)
  puts "#{start} → #{finish}#{opts[:page] ? "  page #{opts[:page]}" : ''}\n\n"
  rows.sort_by { |x| -x["impressions"] }.first(opts[:limit]).each do |x|
    puts format("%-55s %5d impr %4d clicks pos %5.1f", x["keys"][0][0, 55], x["impressions"], x["clicks"], x["position"])
  end
when "compare"
  split = opts[:split] or abort "compare needs --split YYYY-MM-DD (the change date)"
  days = opts[:days] == 90 ? [(finish - split).to_i, 1].max : opts[:days]
  after = [split + 1, split + days]
  before = [split - days + 1, split]
  pre = query(opts, *before, ["page"]).to_h { |x| [short(x["keys"][0]), x] }
  post = query(opts, *after, ["page"]).to_h { |x| [short(x["keys"][0]), x] }
  b = totals(pre.values)
  a = totals(post.values)
  puts "before #{before.join(' → ')} vs after #{after.join(' → ')} (#{days} days each)"
  puts format("clicks %d → %d   impressions %d → %d   CTR %.2f%% → %.2f%%   pos %.1f → %.1f\n\n", b[0], a[0], b[1], a[1], b[2], a[2], b[3], a[3])
  zero = { "clicks" => 0, "impressions" => 0, "position" => 0 }
  post.sort_by { |_, v| -v["impressions"] }.first(opts[:limit]).each do |page, v|
    o = pre[page] || zero
    puts format("%-44s clicks %3d → %3d  impr %5d → %5d  pos %5.1f → %5.1f", page[0, 44], o["clicks"], v["clicks"], o["impressions"], v["impressions"], o["position"], v["position"])
  end
when "sitemaps"
  (api(:get, "sites/#{URI.encode_www_form_component(opts[:site])}/sitemaps")["sitemap"] || []).each do |s|
    puts format("%-60s downloaded %-20s errors %s warnings %s", s["path"], s["lastDownloaded"].to_s[0, 19], s["errors"], s["warnings"])
  end
end
