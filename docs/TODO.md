# /software/ — Improvement Roadmap

_Analysis date: 2026-11-04. Based on a full read of layouts, includes, SASS, front matter across all 156 software / 65 alternatives / 9 roundup files, a clean build + smoke test, and live Search Console API data (`sc-domain:opensourcefeed.org`, page contains `/software/`, final data through 2026-11-01)._

_Search data note: page-level totals are used for clicks and impressions because query-level totals omit anonymised rare queries (3 months: 437 page-level clicks vs. 129 query-level)._

---

## 1. Where the section stands

| Metric | Value |
|---|---|
| Software pages | 156 (90 open source, 64 proprietary, 2 source-available) across 27 categories |
| Alternatives pages | 65 — **39 of them list only 1–2 alternatives**; body is 58–224 words |
| Roundups | 9 (88–188 words each, no FAQ, no ranking); **18 of 27 categories have none** |
| FAQ coverage | 38/156 software, 8/65 alternatives, 0/9 roundups |
| Comparison tables | 10/65 alternatives pages |
| Featured (OG) images | 58/156 software; 0 alternatives; 0 roundups |
| Search (2026-08-02 → 11-01) | 66.6k impressions, 437 clicks, CTR 0.66%, avg. pos. 16.9 |
| By device (query-level) | **Desktop: 89% of impressions at 0.25% CTR (pos. 21.6)** · Mobile: 1.26% CTR (pos. 14.1) |
| Query intent mix (impressions) | "alternative" 16.3k · "X open source" 11.3k · "is X open source" 1.7k · "best" 1.0k · "self-hosted" 0.8k · "vs" ~0 |
| Clicks by intent | "X open source" 64 · "alternative" 59 · everything else ≈6. The two core intents carry the section. |

### Effect of the 2026-09-25 title changes (37 days before vs. 37 days after)

| | 08-20 → 09-25 | 09-26 → 11-01 | Change |
|---|---|---|---|
| Clicks | 146 | 212 | **+45%** |
| Impressions | 26.3k | 25.4k | −4% (the Telegram spike faded, see below) |
| CTR | 0.55% | 0.84% | +0.29 pt |
| Avg. position | 17.1 | 14.1 | +3.0 |

- **Winners:** alternative-to/3ds-max (0 → 17 clicks), /zbrush (1 → 18), /spotify (2 → 14), /anydesk (3 → 8), /winrar (1 → 6); best-open-source-torrent-clients (11 → 22).
- **Big position gains** (no clicks yet; now on page 2): alternative-to/notion 51 → 16, /obsidian 33 → 15, /software/ directory 35 → 13, AI-coding roundup 34 → 17, image-editors roundup 35 → 20, alternative-to/asana 24 → 14, /google-drive 17 → 9.
- **`seo_title` results are mixed:** /iina improved (pos. 14 → 8.9, impressions up 49%), but /telegram clicks fell 10 → 3 as impressions fell 1.3k → 0.6k, and /element gained impressions (13 → 352) while slipping to pos. 34. /davinci-resolve, /rancher-desktop and /unreal-engine show no measurable change yet.
- **Slipping:** alternative-to/onedrive 8.8 → 13.0, /anydesk 7.7 → 9.4, /winrar 6.8 → 8.1.
- **Anomaly:** "open source alternative to telegram saved messages" made up 7.6k of 66.6k impressions, almost all before 09-25, with 0 clicks. That pattern looks like a SERP-feature or bot spike rather than real demand, so don't optimise around it further.

### Where the remaining clicks are

- **Bottom of page 1 (pos. 7–10) with weak CTR.** This is most alternatives pages. Moving from pos. ~8 to 3–5 is now the biggest lever, and it needs content depth, not just titles. Largest examples:
  - torrent roundup: 3.7k impressions per 37 days, 0.6% CTR, pos. 8.6, with a cluster of 15+ "open source torrent (client/software/downloader)" variants
  - alternative-to/vlc: 1.2k, pos. 9
  - /telegram: "is telegram open source", 760 impressions, pos. 10
  - alternative-to/nordvpn: "nordvpn alternatives", 258 impressions, 0 clicks, pos. 8.8
  - alternative-to/spotify, /anydesk, /autocad, /onedrive
- **Page 2 (pos. 11–30) with real impressions:**
  - alternative-to: google-meet (1.55k impressions, pos. 18), autocad (1.1k, 20.5), obsidian (0.9k, 23), discord (0.6k, 27, 0 clicks), google-drive, figma, asana, trello, lightroom, quicktime
  - roundups: media-players (1.0k, 18), web-browsers (0.75k, 26), ai-coding-assistants (0.7k, 26), pdf-readers, audio-editors
  - software pages: rancher-desktop, godot, signal, blender, maya, taiga, aider
  - /software/ directory (1.3k, pos. 29.5)
- **Not ranking:** best-open-source-communication-apps sits at pos. ~45 for a cluster of about 2.5k impressions of "open source messaging (platform/software/service/system)" queries. The page doesn't target that wording, and part of the cluster (middleware, framework, low latency) is developer message-queue intent the page can't serve. Target the end-user variants only.
- **Emerging demand:** "claude code alternative(s)" (378 impressions, pos. 34), "element matrix selfhosted" (329, pos. 30), "discord alternatives" (141, pos. 29), "self hosted teams alternative" (136, pos. 52), "trello open source" (109, pos. 29), "google meet alternative" plus "free google meet alternative" (550, pos. 23–30).

---

## 2. SWOT

### Strengths
- Clean, maintainable architecture: three collections, front matter drives everything, no JS framework, ~21 KB compressed CSS, a working smoke test.
- Solid technical SEO base: canonical, per-page JSON-LD (SoftwareApplication / ItemList / CollectionPage / BreadcrumbList / FAQPage), sitemap with `lastmod`, `seo_title` override, breadcrumbs on all pages.
- Consistent, factual editorial voice; recent pages correct outdated claims ("is X open source" answered honestly, e.g. client vs. server).
- Dark mode, client-side search/filter, accessible CSS-only nav.
- Domain already ranks page 1 (pos. 7–10) for many "open source alternative to X" and "X open source" queries; alternatives pages are the clear winning page type.
- Search-matched titles demonstrably work: clicks rose 45% in the 37 days after the 2026-09-25 changes, and several pages jumped 15–35 positions.
- Parent site (opensourcefeed.org) gives brand and link equity.

### Weaknesses
- **Thin money pages.** Alternatives pages (the best-performing type) are capped by the content policy at "2–3 sentences" of why-switch; 60% list ≤2 alternatives. Roundups are ~100–190 words that list every open-source item in a category with no ranking or "best for".
- **Stuck at the bottom of page 1.** Most ranking pages sit at pos. 7–10, where CTR is low (torrent roundup 0.6%, VLC alternatives 0.6%). Desktop is 89% of impressions but only 0.25% CTR. 112 descriptions are over 160 characters and get truncated.
- **Structured data correctness:** SoftwareApplication `author`/`publisher` claim OpenSourceFeed made the software, the `applicationCategory` map covers only 12 of 27 categories (the rest emit the invalid "SoftwareApplication"), 34 free-text licence strings mostly fall outside the licence URL map, and proprietary apps have no `offers`.
- **Social previews break:** `og:image` falls back to an SVG logo (unsupported by Facebook, X and LinkedIn) on most alternatives pages and on 90+ software pages; roundups use the generic site icon.
- **No E-E-A-T signals on the page:** no visible author, methodology, "how we test", or "last verified version".
- **Weak internal linking:** software pages have no "similar in this category" block; proprietary pages show a text CTA instead of alternative cards; the footer links only 3 hubs.
- **Visual sameness:** every page is a single 800 px column with generic cards. Software pages leave the right side of the layout empty on desktop, and the hamburger menu shows on screens up to 1199 px.
- Small bugs (see P0).

### Opportunities
- **"Alternative to X" long tail is huge and under-covered.** High-volume gaps include Google Photos→Immich, Plex→Jellyfin, Zapier→n8n, Postman→Bruno/Hoppscotch, Google Analytics→Matomo/Plausible/Umami, Airtable→NocoDB/Baserow, Confluence→BookStack/Outline, Calendly→Cal.com, Firebase→Supabase/Appwrite, DocuSign→Documenso, ChatGPT→Open WebUI/Jan, Grammarly→LanguageTool, Todoist, Excel, Power BI→Metabase/Superset.
- **"Self-hosted X alternative"** queries are already showing up in GSC ("self hosted teams alternative", "element matrix selfhosted").
- **"Is X open source?"** (1.2k impressions): every software page can answer it in a predictable, featured-snippet-friendly block generated from `type` + `license`.
- 18 categories have no roundup; several have proven demand (video conferencing, note-taking, cloud storage, password managers, project management).
- Per-alternative "what you gain / what you lose / how to migrate" content is unique to the alternatives-page intent, so it doesn't break the non-overlap principle.
- Featured images exist for 58 pages; templated OG images could cover the rest, and alternatives and roundups too.
- Cross-linking from the main opensourcefeed.org blog and news posts into the matching software or alternatives pages.

### Threats
- Entrenched competitors (AlternativeTo, Slant, opensource.builders, ItsFOSS) with crowd data and years of backlinks.
- AI Overviews absorb "is X open source" and "alternative to X" answers, so pages need depth that a summary can't replace (migration steps, trade-offs, comparison data).
- Content decay: versions, licences and pricing change (e.g. licence relicensings). Stale facts erode trust.
- Ad placement above the fold plus third-party scripts (AdSense, GA, Ahrefs) risk Core Web Vitals and layout shift, especially on mobile. The ad min-height is 90 px, but responsive mobile units are often about 250–280 px.
- Thin or near-duplicate pages at scale can trigger a site-wide helpful-content devaluation.

---

## 3. Prioritised TODO

Legend: **Impact** H/M/L · **Effort** S (<1 h) / M (half day–2 days) / L (multi-day)

### P0 — Quick wins: bugs and one-line fixes (do this week)

- [x] **Fix Okular platforms YAML bug.** `*BSD` is parsed as a YAML alias, which renders an empty platform tag and a trailing empty entry in JSON-LD `operatingSystem`. Quote it: `"*BSD"` or `BSD`. → `_softwares/okular.md:9` · H/S _Done 2026-11-04._
- [ ] **Heading font never applies.** `system-ui` is listed before `"Sora"`, so Sora is downloaded via a render-blocking request but never used. Either put `"Sora"` first, or drop the Google Fonts `<link>` and the preconnects to save a blocking request. → `_sass/_variables.scss:61`, `_includes/head.html:69-71` · M/S
- [x] **Lazy-load card logos.** The directory loads 157 `<img>` with no `loading="lazy"`. Add `loading="lazy" decoding="async"` to card logos (not to the software-page header logo or the featured image). → `_includes/software-card.html`, `_includes/alternative-card.html`, `_layouts/alternative-to.html` · M/S _Done 2026-11-04._
- [x] **Remove the misleading hero stat "Free / Always".** The directory lists 64 proprietary tools. Replace it with an alternatives-page count, e.g. "65 alternatives guides". → `index.html:25-28` · M/S _Done 2026-11-04._
- [ ] **Fix SoftwareApplication authorship.** `author`/`publisher` = OpenSourceFeed asserts that we built the software. Remove both from the SoftwareApplication node, or add a `developer` front-matter field and emit it as `author`. Keep OpenSourceFeed as publisher of a wrapping `WebPage`. → `_includes/json-ld-software.html:86-91` · H/S
- [ ] **Complete the `applicationCategory` map** for all 27 categories using schema.org's listed values (e.g. web-browser/torrent-client/file-compression/vpn → `UtilitiesApplication`, code-editor/virtualization → `DeveloperApplication`, 3d-modeling/cad → `DesignApplication`, music-streaming → `MultimediaApplication`, game-development → `DeveloperApplication`); never emit the literal `"SoftwareApplication"`. → `_includes/json-ld-software.html` · M/S
- [x] **Stop SVG `og:image`.** When there's no `featured_image`, fall back to a raster image (the site icon PNG for now; templated OG images in P1). Also add `og:image:width/height/alt`. → `_includes/head.html:39-53` · H/S _Done 2026-11-04: generated cards replace SVG logos; size and alt tags added; the smoke test now fails on SVG or missing og:image files._
- [ ] **`og:type`**: use `article` on software, alternatives and roundup pages, plus `article:modified_time` from `last_modified_at`. → `_includes/head.html:56` · L/S
- [ ] **Empty Atom feed.** `{% feed_meta %}` advertises `/software/feed.xml`, which has no entries (there are no posts). Remove `feed_meta` and `jekyll-feed`, or configure a feed of recently updated alternatives pages. → `_includes/head.html:95`, `_config.yml` · L/S
- [ ] **`/software/robots.txt` is ignored by crawlers** (only the root `/robots.txt` counts). Make sure the main site's root robots.txt lists `https://www.opensourcefeed.org/software/sitemap.xml`, and submit that sitemap in Search Console. · M/S
- [ ] **Roundup H2 duplicates the H1.** Change it to e.g. "Our Picks" or "{{ n }} Open Source {{ category }} Compared". → `_layouts/roundup.html:25` · L/S
- [ ] **Reserve ad height on mobile** (`min-height` ~280 px below the tablet breakpoint, 90–100 px on desktop) to prevent CLS. → `_sass/_ads.scss:15,28` · M/S
- [ ] **Add `seo_title` + a sharper description to the highest-impression bottom-of-page-1 pages**, using the wording people search:
  - best-open-source-torrent-clients: "open source torrent client(s)"
  - alternative-to/vlc: "VLC alternatives for Linux"
  - alternative-to/nordvpn: "NordVPN alternatives"
  - alternative-to/spotify: "open source Spotify alternative"
  - alternative-to/anydesk
  - alternative-to/autocad
  - best-open-source-communication-apps: "open source messaging apps", end-user wording only

  Don't retitle alternative-to/telegram for "saved messages", since that impression spike has faded. · H/S
- [ ] **Review the `seo_title`s that didn't help:** /telegram (clicks 10 → 3; test a title that leads with "Telegram" plus "open source client, closed server") and /element (pos. 25 → 34; target "Element Matrix self-hosted" explicitly in the H2s and body, not only the title). · M/S
- [ ] **Trim the 112 descriptions over 160 characters** (start with the top 30 pages by impressions). A ruby one-liner in `test/` can list them. · M/M
- [ ] **Shorten the 11 `<title>`s over 60 characters** (vmware-workstation, windows-media-player, onedrive, premiere-pro, vs-code, illustrator, outlook, 3ds-max, microsoft-office, quicktime, vlc) via `seo_title`. · M/S
- [ ] **Add logos for the 8 pages without one** (3ds-max, librecad, navidrome, nuclear, olive, openshot, outlook, zbrush; a zbrush.svg is already untracked in the working tree). · L/S
- [x] **Add `id` anchors to directory category headings** (`id="{{ group.name }}"`) so categories are deep-linkable. → `index.html` · L/S _Done 2026-11-04 (`#cat-<slug>`)._
- [ ] **Commit a Search Console report script** (service account, `searchAnalytics.query`, before/after page comparison) so every title or content change can be measured 4–5 weeks later. Keep the key file outside the repo. · M/S
- [ ] **Recheck the slipping pages** (alternative-to/onedrive 8.8 → 13, /anydesk 7.7 → 9.4, /winrar 6.8 → 8.1). Look for competitor updates, outdated facts, or a missing third alternative. · M/S

**Also completed (not on the original list)**

- [x] **VLC page contradicted its own licence.** The header said GPL-2.0-or-later, but "Is VLC Open Source?" said LGPL-2.1. Corrected to: the application is GPL-2.0-or-later, and libVLC plus most modules are LGPL-2.1-or-later (relicensed 2011–2012). Also fixed the Signal/Element licence comparison (both are AGPL-3.0), the "identical feature set on all platforms" claim, and the source-code link (VideoLAN GitLab, GitHub mirror). → `_softwares/vlc.md` _Done 2026-11-04._
- [x] **`test/` was published to the live site** (`/software/test/build_smoke_test.rb`). Added `test` and `scripts` to `exclude` in `_config.yml`. _Done 2026-11-04._
- [x] **Dark-mode colour bugs:** body links, ad placeholders and section-title rules used light-theme Sass colours, so they showed dark-on-dark or as bright blocks. Switched to theme variables. _Done 2026-11-04._
- [x] **Smoke test guards social images:** the build now fails if any page's `og:image` is an SVG or points to a missing file. _Done 2026-11-04._

### P1 — High impact (next 2–6 weeks)

**Content depth on the page types that already rank**

- [ ] **Revise the alternatives-page content policy** (`docs/CONTENT-POLICY.md`, `.clinerules`). Keep "no feature breakdowns", but allow per-alternative fields that only make sense on this page:
  `alternatives:` → list of `{slug, best_for, gains, trade_offs, migration}` (backwards compatible: plain slugs still work). Render each as a numbered H3 block with a "Best for" label. · H/M
- [ ] **Add a "Quick answer" box** at the top of each alternatives page ("The best open source alternative to X is Y for most people; Z if you need …"). It answers intent above the fold and is snippet-friendly. Front matter: `verdict`. · H/M
- [ ] **Push the pos. 7–10 pages into the top 5 with depth.** These rank but don't get clicked: torrent roundup, alternative-to/vlc, /spotify, /nordvpn, /anydesk, /onedrive, /whatsapp, /apple-music, /3ds-max, /zbrush. Add a quick-answer box, per-alternative trade-offs, a comparison table and an FAQ built from each page's real queries (pull them per page with the report script). · H/M
- [ ] **Raise every alternatives page to ≥3 alternatives where honest options exist**, starting with the 13 single-alternative pages ordered by impressions. Where only one or two real options exist, say so explicitly; don't pad. · H/L
- [ ] **Add FAQ and comparison tables** to the top 20 alternatives pages by impressions (currently 8 have FAQs and 10 have tables). Base the FAQ questions on real GSC queries. · H/M
- [ ] **Rebuild roundups as ranked guides:** a manual ordered list in front matter (`picks: [{slug, best_for}]`) instead of "every open-source item in the category", a "How we picked" paragraph, a comparison table (licence, platforms, self-hostable, mobile apps) and an FAQ. Also link each roundup from its category's alternatives pages. · H/M
- [ ] **Auto-generated "Is {{ title }} open source?" block** on every software page, built from `type` + `license` (one sentence + licence link), using the H2 wording people search for. Skip it where the body already has that H2 (VLC etc.), or migrate those bodies. · H/M

**Structured data and trust**

- [ ] **Add structured fields to software pages:** `developer`, `repository`, `pricing` (free / freemium / paid + price), `latest_version` + `version_checked_at`, `first_release`, `self_hostable`, `mobile` (iOS/Android). Show them in the UI (see the at-a-glance panel below) and emit them in JSON-LD (`softwareVersion`, `offers` for proprietary apps too, `author` = developer, `downloadUrl`/`codeRepository` where relevant). · H/M
- [ ] **Normalise licences:** add `license_spdx` (machine value, used for the badge and JSON-LD) and keep the current free text as `license_note`, shown on the page only. That fixes overly long badges and the licence URL map in one go. · M/M
- [ ] **Visible byline and methodology:** "By Niyas C · Updated {{ date }} · How we evaluate software" on every content page, plus an /about-methodology/ page and an author `Person` entity in JSON-LD. · H/M

**Internal linking**

- [ ] **"Similar in {{ category }}" block** on every software page (3–6 cards from the same category, open source first). · H/S
- [ ] **On proprietary software pages, show the top 3 alternative cards** (logo + name + one-liner) instead of the text-only CTA, with the CTA kept as "See all alternatives". · H/S
- [ ] **Footer category hub:** link all 27 categories, all roundups and the top alternatives pages (a premium look plus crawl paths). · M/S
- [ ] **Cross-link from the main opensourcefeed.org blog and news posts** to matching software and alternatives pages (e.g. release news → software page). · H/M

**Design / premium look / responsive**

- [x] **Two-column software page at ≥1024 px:** the body on the left (max ~70ch), with a sticky "At a glance" card on the right (type badge, licence, platforms, developer, latest version, pricing, website + repo buttons, "Alternatives to" links). On mobile the card sits under the header. · H/M _Done 2026-11-04. `developer`, `latest_version`, `pricing` and `repository` render when present; adding the data is still open under Structured data._
- [x] **Templated OG and featured images** for all software, alternatives and roundup pages (a consistent 1200×630 layout: logo + title + type badge on the brand gradient). Generate them offline with a script and commit the WebP output, since there's no build-time JS. · H/M _Done 2026-11-04: `scripts/generate-og-images.rb` produced 174 cards (4.9 MB) for pages without a hand-made featured image._
- [x] **Show the inline desktop nav from 1024 px** instead of 1200 px (drop the social icons to the footer or an overflow menu at 1024–1199 px). → `_sass/_layout.scss:348` · M/S _Done 2026-11-04; the social links are repeated in the footer. A pre-existing wrap of the menu at 1440 px is also fixed._
- [x] **Deduplicate card markup:** `_layouts/alternative-to.html` inlines a copy of the software card. Extend `software-card.html` (with `show_platforms`, `show_footer` params) and reuse it. · L/S _Done 2026-11-04._
- [x] **Directory UX on mobile:** a horizontally scrollable category chip bar (anchor links) above the list, plus a "back to top" link per group. 156 cards in one column is a very long scroll. · M/M _Done 2026-11-04: one-line scrollable jump bar (synced with search and filters); back-to-categories links appear below 1024 px._
- [x] **Run the real responsive pass the rules require** (320 / 768 / 1024 / 1200 / 1440) after the layout changes. This analysis reviewed the CSS only; nothing was checked in a browser. · M/S _Done 2026-11-04 in headless Chrome: no horizontal overflow on 10 page types at 320/375/768/1024/1200/1280/1440/1920, header on one line at every width, and dark mode checked._

### P2 — Growth (1–3 months)

- [ ] **New alternatives pages by demand.** Validate each with GSC or keyword data first; candidates: Google Photos, Plex, Zapier, Postman, Google Analytics, Airtable, Confluence, Calendly, Firebase, DocuSign, ChatGPT, Grammarly, Todoist, Excel, Power BI, Heroku/Vercel, Mailchimp, Loom. Also deepen the existing page-2 alternatives pages in impression order: google-meet, autocad, obsidian, discord, google-drive, notion (now pos. 16, up from 51), figma, asana, trello, claude-code. Each needs its software pages first (create-alternative skill). · H/L
- [ ] **Add the open-source tools those pages need:** OBS Studio, HandBrake, Immich, n8n, Bruno, Hoppscotch, Matomo, Plausible, Umami, NocoDB, Baserow, BookStack, Outline, Cal.com, Supabase, Appwrite, Documenso, Open WebUI, Jan, LanguageTool, Metabase, Superset, Coolify, listmonk, Vaultwarden, Calibre, Zotero, Anki. · H/L
- [ ] **Roundups for the 18 categories without one**, in demand order: video conferencing, note-taking, cloud storage, password managers, project management, video editing, remote desktop, VPN, office suites, email clients, then the rest. · H/L
- [ ] **"Self-hosted" hub:** a `self_hostable` filter chip in the directory plus a "Best self-hosted alternatives to X" angle on qualifying alternatives pages (GSC: about 770 self-hosted impressions in 3 months, e.g. "element matrix selfhosted", "self hosted teams alternative"). · M/M
- [ ] **Migration guides** as a section on alternatives pages ("Move from LastPass to Bitwarden: export CSV → import"). Highly useful and hard for AI summaries to replace. · H/L
- [ ] **Freshness process:** a `version_checked_at` field plus a smoke-test warning for pages unverified for more than 6 months; a monthly "verify top 20 pages" routine. · M/M
- [ ] **Extend `test/build_smoke_test.rb`** to fail on: description > 160 characters, title > 60, empty `<li class="tag">`, SVG `og:image`, missing logo file, unknown `applicationCategory`, alternative slugs that don't resolve. · M/S
- [ ] **Core Web Vitals pass:** load the Ahrefs and GA scripts after interaction or idle, move the below-header ad on alternatives pages under the quick-answer box, and check LCP/CLS in PageSpeed Insights for the top 5 pages. · M/M

### P3 — Nice to have

- [ ] "X vs Y" comparison pages, only once GSC shows "vs" demand (currently ~5 impressions).
- [ ] Platform filter (Linux / Windows / macOS / Android / iOS) in the directory search.
- [ ] Self-hosted variable font (Sora or Inter) with `font-display: swap` + preload, if a distinctive heading face is wanted after the P0 fix.
- [ ] Screenshots gallery on software pages, reusing the main site's /screenshots/ assets where they exist.
- [ ] Sticky first column for comparison tables on mobile.
- [ ] Align docs with reality: `.clinerules` says Jekyll 4.x, but the Gemfile uses `github-pages` (Jekyll 3.10).
- [ ] Clarify the WebSite/Organization JSON-LD `@id`s (currently scoped under `/software/`, so they duplicate the main site's entities). Point them at the main site's `@id`s.
