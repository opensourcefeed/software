# Architecture: `/software/` Section

## Overview

The `/software/` section is built on Jekyll collections, Liquid templating, and a mobile-first SASS architecture. This document covers the technical design decisions and patterns used.

## Jekyll Collections Design

### Two Collections

| Collection | Directory | Permalink | Purpose |
|---|---|---|---|
| `softwares` | `_softwares/` | `/software/:slug/` | Individual software pages (open-source & proprietary) |
| `alternatives` | `_alternatives/` | `/software/alternative-to/:slug/` | Open source alternatives to a specific proprietary tool |

### Why Collections (not posts or pages)

- **Collections** give us custom permalinks, front matter schemas, and `site.softwares` / `site.alternatives` Liquid arrays for cross-referencing.
- **Posts** are date-based and don't fit evergreen software content.
- **Pages** lack the collection-level Liquid querying needed for the directory listings.

### Permalink Note

Jekyll collection permalinks support `:slug`, which falls back to the filename slug. All seed files are named to match their `slug` front matter, ensuring URLs are correct.

## Liquid Cross-Reference Patterns

### Pattern 1: Alternatives page → proprietary software lookup

```liquid
{% assign proprietary = site.softwares | where: "slug", page.proprietary_slug | first %}
{{ proprietary.description }}
<a href="{{ proprietary.url }}">Full details →</a>
```

### Pattern 2: Alternatives page → each alternative's software page

```liquid
{% for alt_slug in page.alternatives %}
  {% assign alt = site.softwares | where: "slug", alt_slug | first %}
  {{ alt.title }} — {{ alt.description }}
{% endfor %}
```

### Pattern 3: Landing page → group by category

```liquid
{% assign grouped = site.softwares | group_by: "category" %}
{% for group in grouped %}
  <h2>{{ group.name }}</h2>
  {% for software in group.items %}
    {{ software.title }}
  {% endfor %}
{% endfor %}
```

### Pattern 4: Filter open-source only

```liquid
{% assign oss = site.softwares | where: "type", "open-source" %}
```

**Rule:** Never hardcode software descriptions in layouts. Always pull from the source `_softwares/` file via these patterns.

## SASS Architecture

### File Structure

```
_sass/
  _variables.scss       → Colors, breakpoints, spacing, typography scale
  _mixins.scss          → Responsive mixins (media queries, grid, flex)
  _base.scss            → CSS reset, base typography, links, images
  _layout.scss          → Container, responsive grid, flexbox utilities
  _components.scss      → Cards, badges, breadcrumbs, banners, tables
  _pages.scss           → Software/alternatives page-specific styles
  _ads.scss             → AdSense container styling

assets/css/
  main.scss             → @import all partials (Jekyll processes this)
```

### Mobile-First Approach

Base styles target mobile. Media queries progressively enhance for larger screens.

```scss
// _mixins.scss
@mixin respond-to($breakpoint) {
  @if $breakpoint == tablet {
    @media (min-width: 640px) { @content; }
  } @else if $breakpoint == desktop {
    @media (min-width: 1024px) { @content; }
  } @else if $breakpoint == wide {
    @media (min-width: 1280px) { @content; }
  }
}
```

### Responsive Grid

```scss
@mixin auto-grid($min-width: 280px) {
  display: grid;
  grid-template-columns: 1fr;  // mobile: single column
  gap: $spacing-md;

  @include respond-to(tablet) {
    grid-template-columns: repeat(auto-fill, minmax($min-width, 1fr));
  }
}
```

### Breakpoints

| Name | Min-width | Target |
|---|---|---|
| `mobile` | 0 (default) | Phones |
| `tablet` | 640px | Large phones, tablets |
| `desktop` | 1024px | Desktops |
| `wide` | 1280px | Wide screens |

## AdSense Integration

### Config-Driven

```yaml
# _config.yml
adsense:
  enabled: true
  client_id: "ca-pub-XXXXXXXXXXXXXXXX"
  slots:
    software-below-header: "2834641343"       # Article: top
    software-mid-content: "5417552591"        # Article: mid
    alternatives-below-header: "2834641343"   # Reuses top-of-article slot
    alternatives-mid-content: "5417552591"    # Reuses mid-article slot
    directory-below-title: "3888848509"       # Landing pages
    alt-landing-below-title: "3888848509"     # Reuses landing slot
```

### Include Pattern

```liquid
{% include ad.html slot="software-below-header" %}
```

The `slot` parameter is a **descriptive position key**, not a numeric ID. The
`ad.html` include looks up the corresponding numeric AdSense ad unit ID from
`site.adsense.slots[include.slot]`.

- When `site.adsense.enabled` is `true`, `client_id` is set, **and** a numeric
  slot ID exists for the key: renders real `<ins class="adsbygoogle">` block +
  AdSense loader script (once, in `<head>`).
- When disabled or slot ID is missing: renders a labeled placeholder div so ad
  positions stay visible (graceful degradation).

### Ad Positions & Slot Mapping

| Page | Position Key | Slot ID | Notes |
|---|---|---|---|
| Software page | `software-below-header` | `2834641343` | Top of article |
| Software page | `software-mid-content` | `5417552591` | After description |
| Alternatives page | `alternatives-below-header` | `2834641343` | Top of article |
| Alternatives page | `alternatives-mid-content` | `5417552591` | After why-switch |
| Software directory (`/`) | `directory-below-title` | `3888848509` | Below hero |
| Alternatives landing (`/alternative-to/`) | `alt-landing-below-title` | `3888848509` | Below hero |

**Duplicate-slot rule:** A numeric slot ID must never appear more than once on
the same page. The mapping above reuses IDs only across *different* page types
(software vs. alternatives share article slots; both landing pages share the
landing slot) — never within a single page.

### `ads.txt` Requirement (Domain Root)

AdSense requires an `ads.txt` file at the **site domain root**, i.e.
`https://www.opensourcefeed.org/ads.txt` — **not** inside this `/software/`
subdirectory. It must be added to the main OpenSourceFeed site repository with:

```
google.com, pub-6380671811722843, DIRECT, f08c47fec0942fa0
```

Without this file, AdSense cannot verify the publisher and ads will not serve.

## JSON-LD Structured Data

All pages render multiple JSON-LD `<script>` blocks — this is valid per Google's guidelines. Site-level entities (`WebSite`, `Organization`) are defined once with `@id` anchors and referenced by all other schemas to avoid duplication.

### All Pages → `WebSite` + `Organization` (`json-ld-website.html`)

Defined once, referenced everywhere via `@id`:

- `WebSite` (`/#website`): `name`, `url`, `description`, `inLanguage`, `publisher`
- `Organization` (`/#organization`): `name`, `url`, `logo`, `sameAs` (social media profiles)

```json
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "@id": "https://www.opensourcefeed.org/software/#website",
  "name": "OpenSourceFeed",
  "url": "https://www.opensourcefeed.org/software/",
  "inLanguage": "en",
  "publisher": { "@id": ".../#organization" }
}
```

### Software Pages → `SoftwareApplication` (`json-ld-software.html`)

```json
{
  "@context": "https://schema.org",
  "@type": "SoftwareApplication",
  "name": "GIMP",
  "operatingSystem": "Linux, Windows, macOS",
  "applicationCategory": "GraphicsApplication",
  "license": "https://www.gnu.org/licenses/gpl-3.0.html",
  "url": "https://gimp.org",
  "description": "...",
  "image": "https://www.opensourcefeed.org/software/assets/images/software/gimp.png",
  "mainEntityOfPage": { "@type": "WebPage", "@id": "..." },
  "dateModified": "2026-07-23",
  "author": { "@id": ".../#organization" },
  "publisher": { "@id": ".../#organization" },
  "offers": { "@type": "Offer", "price": "0", "priceCurrency": "USD" }
}
```

**Fields:**
- `offers` — rendered only for `type: open-source` (signals "Free" rich result)
- `image` — from `page.logo` (absolute URL)
- `dateModified` — from `page.last_modified_at`
- `author` / `publisher` — `@id` reference to Organization
- `mainEntityOfPage` — canonical page URL

**License → URL mapping** (Liquid `case` in `json-ld-software.html`):
- `GPL-3.0` → `https://www.gnu.org/licenses/gpl-3.0.html`
- `GPL-2.0` → `https://www.gnu.org/licenses/gpl-2.0.html`
- `MIT` → `https://opensource.org/licenses/MIT`
- `Apache-2.0` → `https://www.apache.org/licenses/LICENSE-2.0`
- `BSD-2-Clause` → `https://opensource.org/licenses/BSD-2-Clause`
- `BSD-3-Clause` → `https://opensource.org/licenses/BSD-3-Clause`
- `MPL-2.0` → `https://www.mozilla.org/en-US/MPL/2.0/`
- `AGPL-3.0` → `https://www.gnu.org/licenses/agpl-3.0.html`
- `LGPL-3.0` → `https://www.gnu.org/licenses/lgpl-3.0.html`
- `Proprietary` / `Freeware` → omitted (no URL)

**Category → schema.org mapping**:
- `image-editing` → `GraphicsApplication`
- `communication` → `CommunicationApplication`
- `media-player` → `MultimediaApplication`
- `video-conferencing` → `CommunicationApplication`
- `office-suite` → `BusinessApplication`
- `development` → `DeveloperApplication`

### Alternatives Pages → `ItemList` (`json-ld-alternatives.html`)

```json
{
  "@context": "https://schema.org",
  "@type": "ItemList",
  "name": "Open Source Alternatives to Adobe Photoshop",
  "description": "...",
  "url": "...",
  "dateModified": "2026-07-23",
  "author": { "@id": ".../#organization" },
  "publisher": { "@id": ".../#organization" },
  "mainEntity": {
    "@type": "SoftwareApplication",
    "name": "Adobe Photoshop",
    "url": "...",
    "description": "..."
  },
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "name": "GIMP",
      "url": "...",
      "description": "...",
      "image": "..."
    }
  ]
}
```

**Fields:**
- `mainEntity` — minimal reference to the proprietary software (not a full duplicate)
- Each `ListItem` includes `description` and `image` (from alternative's software front matter)

### Landing Pages → `CollectionPage` (`json-ld-collection.html`)

```json
{
  "@context": "https://schema.org",
  "@type": "CollectionPage",
  "name": "Software Directory",
  "description": "...",
  "url": "...",
  "isPartOf": { "@id": ".../#website" },
  "dateModified": "2026-07-23",
  "author": { "@id": ".../#organization" },
  "publisher": { "@id": ".../#organization" },
  "hasPart": [
    { "@type": "SoftwareApplication", "name": "GIMP", "url": "..." }
  ]
}
```

**Fields:**
- `isPartOf` — `@id` reference to `WebSite`
- `hasPart` — references (name + url only) to collection items:
  - Software directory (`/`): all `site.softwares` as `SoftwareApplication` references
  - Alternatives landing (`/alternative-to/`): all `site.alternatives` as `ItemList` references
  - Detection via `page.url contains "/alternative-to/"`

### All Pages → `BreadcrumbList` (`breadcrumbs.html`)

Rendered in the breadcrumbs include. Uses `jsonify` filter for all string values to ensure valid JSON output regardless of special characters in titles.

## SEO Implementation

### Head Meta Tags (`_includes/head.html`)

- `<title>`: `{{ page.title }} | {{ site.title }}` (or just `{{ page.title }}` for landing pages)
- `<meta name="description">`: from `page.description`
- `<link rel="canonical">`: `{{ page.url | absolute_url }}`
- `<meta name="dateModified">`: from `page.last_modified_at` in ISO format
- `<meta name="viewport">`: responsive viewport tag

### Image Alt Text

All logos use `alt="{{ software.title }} logo"` — enforced in `software-card.html` and layout templates.

## Non-Overlap Enforcement

The non-overlap policy (see `docs/CONTENT-POLICY.md`) is enforced structurally:

- **Software layout** only renders: header, description (body), CTA, footer. No comparison tables, no "why switch" content.
- **Alternatives layout** only renders: header, proprietary summary (pulled from software page), why-switch (body), alternatives cards, comparison table, footer. No full feature breakdowns.
- **Landing pages** only render: card grids with one-liner descriptions from front matter. No body content.

This means a contributor cannot accidentally duplicate content by putting it in the wrong place — the layout simply doesn't render it.

## Deployment

### GitHub Pages

The site is designed for GitHub Pages deployment:

- `Gemfile` uses `github-pages` gem for version parity
- Only GitHub Pages-whitelisted plugins (`jekyll-feed`, `jekyll-sitemap`)
- `url: https://opensourcefeed.org` in `_config.yml` for correct canonical URLs

### Local Development

```bash
bundle install
bundle exec jekyll serve
# Site at http://localhost:4000
```
