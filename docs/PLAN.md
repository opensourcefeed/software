# Project Plan: `/software/` Section for opensourcefeed.org

## Objective

Build a new Jekyll content section under the `/software/` base URL for **opensourcefeed.org**. This section covers individual software pages (both proprietary and open source) and an "open source alternatives" subsection. The goal is evergreen SEO content with zero content overlap across page types.

## Site Context

- **Stack:** Jekyll, GitHub Pages, Liquid templating, SASS
- **Site URL:** `https://opensourcefeed.org`
- **New section base URL:** `/software/`
- **Deployment:** GitHub Pages

## URL Structure

```
/software/                                  → Popular software listing (directory)
/software/[slug]/                           → Individual software page (e.g., /software/gimp/, /software/photoshop/)
/software/alternative-to/                  → Alternatives landing page
/software/alternative-to/[slug]/           → Alternatives page for a specific proprietary software (e.g., /software/alternative-to/photoshop/)
```

## Jekyll Collections & File Structure

### `_config.yml` additions

```yaml
collections:
  softwares:
    output: true
    permalink: /software/:slug/
  alternatives:
    output: true
    permalink: /software/alternative-to/:slug/
```

### Directory layout

```
_softwares/
  gimp.md
  photoshop.md
  libreoffice.md
  slack.md

_alternatives/
  photoshop.md
  slack.md

_layouts/
  software.html
  alternative-to.html

software/
  index.html                  → Popular software listing
  alternative-to/
    index.html                → Alternatives landing page

_includes/
  software-card.html          → Reusable card for software listing
  alternative-card.html       → Reusable card for alternatives listing
  ad.html                     → Responsive AdSense unit
  json-ld-software.html       → SoftwareApplication schema
  json-ld-alternatives.html   → ItemList schema
  json-ld-collection.html     → CollectionPage schema
```

## Front Matter Schemas

### Software page (`_softwares/gimp.md`)

```yaml
---
layout: software
title: "GIMP"
slug: gimp
tagline: "Free and open source image editor"
type: open-source           # values: open-source | proprietary
license: GPL-3.0            # e.g. GPL-3.0, MIT, Proprietary, Freeware
website: https://gimp.org
platforms: [Linux, Windows, macOS]
category: image-editing     # used for grouping on /software/ index
logo: /assets/images/software/gimp.png
alternative_to:             # list of proprietary slugs this replaces (for open-source pages)
  - photoshop
description: "Brief 1–2 sentence description used in cards and meta tags. No feature deep-dive here."
last_modified_at: 2025-01-01
---
```

```yaml
---
layout: software
title: "Adobe Photoshop"
slug: photoshop
tagline: "Industry-standard image editing software"
type: proprietary
license: Proprietary
website: https://adobe.com/photoshop
platforms: [Windows, macOS]
category: image-editing
logo: /assets/images/software/photoshop.png
alternative_to: []
has_alternatives: true      # triggers "See open source alternatives" CTA on this page
description: "Brief 1–2 sentence description."
last_modified_at: 2025-01-01
---
```

### Alternatives page (`_alternatives/photoshop.md`)

```yaml
---
layout: alternative-to
title: "Open Source Alternatives to Adobe Photoshop"
slug: photoshop
proprietary_slug: photoshop   # references _softwares/photoshop.md
alternatives:                 # list of open-source slugs from _softwares/
  - gimp
  - krita
  - darktable
description: "Meta description: best open source alternatives to Photoshop for Linux, Windows, and macOS."
last_modified_at: 2025-01-01
---
```

## Page Content Rules (Non-Overlap Policy)

Each page type answers exactly one question. Enforce this in layouts and documentation.

| Content element | Software page | Alternatives page | Landing pages |
|---|---|---|---|
| Full feature breakdown | ✅ | ❌ | ❌ |
| License / pricing detail | ✅ | mention only | ❌ |
| Why switch from proprietary | ❌ | ✅ | ❌ |
| Side-by-side comparison table | ❌ | ✅ | ❌ |
| One-liner description | ✅ | ✅ (reused from front matter) | ✅ |
| Platform support | ✅ | ❌ | ❌ |
| Use case / who it's for | ✅ | ❌ | ❌ |

## Layout Specifications

### `_layouts/software.html`

Sections (in order):
1. **Header** — logo, title, tagline, license badge, platform tags, link to official website
2. **Ad slot** — leaderboard banner below header
3. **Description** — body content from the `.md` file (full feature breakdown, use cases, who it's for)
4. **Ad slot** — mid-content banner
5. **Conditional CTA block:**
   - If `type: proprietary` AND `has_alternatives: true` → show banner: *"Looking for free alternatives? → [Open source alternatives to {{ title }}](/software/alternative-to/{{ slug }}/)"*
   - If `type: open-source` AND `alternative_to` is non-empty → show banner: *"This is a free alternative to: [Photoshop](/software/alternative-to/photoshop/)"* (one link per item in `alternative_to` list)
6. **Footer** — last modified date, link back to `/software/`

### `_layouts/alternative-to.html`

Sections (in order):
1. **Header** — "Open Source Alternatives to [Proprietary Software]"
2. **Ad slot** — leaderboard banner below header
3. **Brief proprietary summary** — pull `description` from `_softwares/{{ proprietary_slug }}.md` via `site.softwares` lookup. Add: *"Full details → [{{ proprietary title }}](/software/{{ proprietary_slug }}/)"*. **Do not repeat feature breakdowns here.**
4. **Why switch** — 2–3 sentences in the `.md` body content (cost, freedom, privacy angle). This is the only place this content lives.
5. **Ad slot** — mid-content banner
6. **Alternatives list** — loop over `alternatives` array, for each: pull `title`, `description`, `logo`, `platforms` from `_softwares/[slug].md`. Show as cards. Each card links to `/software/[slug]/`.
7. **Comparison table** (optional, add if maintainer provides data) — columns: Feature | Photoshop | GIMP | Krita
8. **Footer** — last modified, link back to `/software/alternative-to/`

### `software/index.html` — Popular Software Listing

Two sections:
1. **Open Source Alternatives** — loop over `site.alternatives`, show cards (title, proprietary name, count of alternatives). Links to `/software/alternative-to/[slug]/`.
2. **Software Directory** — loop over `site.softwares`, grouped by `category`. Show cards with logo, title, type badge (open-source/proprietary), one-liner. Links to `/software/[slug]/`.

### `software/alternative-to/index.html` — Alternatives Landing

Two sections:
1. **Browse Alternatives** — loop over `site.alternatives`, card per entry. Show proprietary software name, number of alternatives, alternative names as tags.
2. **All Open Source Software** — loop over `site.softwares` where `type == "open-source"`, simple grid of cards.

## Internal Linking Rules

- Alternatives page → links to software page of the proprietary tool (anchor: "learn more about [name]")
- Alternatives page → links to each alternative's software page (anchor: "see full details" or the software name)
- Software page (open-source) → links back to alternatives page (anchor: "open source alternative to [proprietary name]")
- Software page (proprietary) → links to its alternatives page (anchor: "open source alternatives to [name]")
- All pages → breadcrumb: Home > Software > [page title] (or Home > Software > Alternative To > [page title])

## SEO Requirements

- Each page must have unique `<title>` and `<meta name="description">` derived from front matter
- Add `dateModified` in ISO format (from `last_modified_at`) to page `<head>` as a `<meta>` tag
- Add JSON-LD structured data:
  - Software pages: `SoftwareApplication` schema
  - Alternatives pages: `ItemList` schema listing alternatives
  - Landing pages: `CollectionPage` schema
- Canonical URLs must be set on every page
- Image alt text required for all logos

### JSON-LD example for software page

```json
{
  "@context": "https://schema.org",
  "@type": "SoftwareApplication",
  "name": "GIMP",
  "operatingSystem": "Linux, Windows, macOS",
  "applicationCategory": "GraphicsApplication",
  "license": "https://www.gnu.org/licenses/gpl-3.0.html",
  "url": "https://gimp.org"
}
```

### JSON-LD example for alternatives page

```json
{
  "@context": "https://schema.org",
  "@type": "ItemList",
  "name": "Open Source Alternatives to Adobe Photoshop",
  "itemListElement": [
    { "@type": "ListItem", "position": 1, "name": "GIMP", "url": "https://opensourcefeed.org/software/gimp/" },
    { "@type": "ListItem", "position": 2, "name": "Krita", "url": "https://opensourcefeed.org/software/krita/" }
  ]
}
```

## AdSense Integration

- Reusable `_includes/ad.html` with responsive `<ins class="adsbygoogle">` blocks
- Config-driven via `site.adsense` (client_id, enabled flag)
- Placeholder divs show during local dev when ads not configured
- Ad positions on each page type (see Layout Specifications above)

## Responsive Design

- Mobile-first SASS architecture with `@mixin respond-to($breakpoint)`
- Breakpoints: `mobile` (default), `tablet` (640px), `desktop` (1024px), `wide` (1280px)
- CSS Grid for card layouts: `repeat(auto-fill, minmax(280px, 1fr))`
- Flexbox for headers, badges, breadcrumbs
- Responsive images, tables (horizontal scroll), ad containers

## Seed Content (Bootstrap Data)

**`_softwares/`**: photoshop.md, gimp.md, krita.md, slack.md, element.md, vlc.md, zoom.md, jitsi.md

**`_alternatives/`**: photoshop.md, slack.md, zoom.md

## Deliverables Checklist

- [ ] `_config.yml` updated with collections
- [ ] `_layouts/software.html` created
- [ ] `_layouts/alternative-to.html` created
- [ ] `software/index.html` created
- [ ] `software/alternative-to/index.html` created
- [ ] `_includes/software-card.html` created
- [ ] `_includes/alternative-card.html` created
- [ ] Seed `_softwares/` files (8 files)
- [ ] Seed `_alternatives/` files (3 files)
- [ ] JSON-LD partials in `_includes/`
- [ ] All internal links working locally (`bundle exec jekyll serve`)
- [ ] No content duplication across page types (verify against non-overlap table above)