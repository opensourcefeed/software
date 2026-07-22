# Contributing Guide

## Getting Started

### Prerequisites

- Ruby (3.0+ recommended)
- Bundler (`gem install bundler`)
- Git

### Local Setup

```bash
git clone <repo-url>
cd software
bundle install
bundle exec jekyll serve
```

Site will be available at `http://localhost:4000`.

## Adding a New Software Page

1. Create a new file in `_softwares/[slug].md` (slug should be lowercase, hyphenated)
2. Use the front matter schema below
3. Write body content following the [Content Policy](CONTENT-POLICY.md)
4. Add logo image to `assets/images/software/[slug].png` (optional — placeholder shows if missing)
5. Verify the page renders at `/software/[slug]/`

### Front Matter Template

```yaml
---
layout: software
title: "Software Name"
slug: software-name
tagline: "Short tagline"
type: open-source          # or: proprietary
license: GPL-3.0           # SPDX identifier or "Proprietary" / "Freeware"
website: https://example.com
platforms: [Linux, Windows, macOS]
category: image-editing    # see categories list below
logo: /assets/images/software/software-name.png
alternative_to:            # open-source only: proprietary slugs this replaces
  - photoshop
has_alternatives: true     # proprietary only: set true if alternatives page exists
description: "1-2 sentence summary for cards and meta tags."
last_modified_at: 2025-01-01
---

Body content here: full feature breakdown, use cases, who it's for.
```

### Categories

Use these category slugs in front matter (used for grouping on `/software/`):

| Category slug | Display name |
|---|---|
| `image-editing` | Image Editing |
| `communication` | Communication |
| `media-player` | Media Players |
| `video-conferencing` | Video Conferencing |
| `office-suite` | Office Suites |
| `development` | Development Tools |

To add a new category, add it to a software page's `category` field and update the category display name mapping in `software/index.html`.

## Adding a New Alternatives Page

1. Ensure the proprietary software page exists in `_softwares/`
2. Ensure each alternative's software page exists in `_softwares/`
3. Create `_alternatives/[proprietary-slug].md`
4. Use the front matter schema below
5. Write "why switch" body content (2-3 sentences only)
6. Verify the page renders at `/software/alternative-to/[slug]/`

### Front Matter Template

```yaml
---
layout: alternative-to
title: "Open Source Alternatives to [Proprietary Name]"
slug: proprietary-slug
proprietary_slug: proprietary-slug
alternatives:
  - alternative-1-slug
  - alternative-2-slug
description: "Meta description for search engines."
last_modified_at: 2025-01-01
---

Why switch content here: 2-3 sentences on cost, freedom, privacy.
```

## File Naming Conventions

- All collection files: lowercase, hyphenated slugs (e.g., `image-editing.md`)
- Filenames must match the `slug` front matter field
- Logo images: `[slug].png` in `assets/images/software/`
- SASS partials: prefixed with `_` (e.g., `_variables.scss`)

## Image Requirements

- Logos: PNG format, transparent background, 256x256px recommended
- All images must have descriptive alt text
- Place logos in `assets/images/software/[slug].png`
- If a logo is missing, a CSS-styled placeholder with the software's initial is shown

## Testing Before Submitting

1. **Build check:** `bundle exec jekyll build` — must complete without errors
2. **Serve check:** `bundle exec jekyll serve` — verify pages render
3. **Link check:** Verify all internal links work (no 404s)
4. **Content policy:** Verify no content duplication (see [Content Policy](CONTENT-POLICY.md))
5. **Responsive:** Check pages at mobile (320px), tablet (768px), and desktop (1200px) widths
6. **SEO:** Verify unique title and meta description on each page

## Content Policy Compliance

Before submitting, verify:

- [ ] Software page body has NO "why switch" content
- [ ] Software page body has NO comparison tables
- [ ] Alternatives page body has NO full feature breakdowns
- [ ] Alternatives page body is 2-3 sentences only (why switch)
- [ ] Landing pages have NO body content (auto-generated from front matter)
- [ ] All descriptions are unique across pages
- [ ] `last_modified_at` is updated if content changed

## AdSense Configuration

To enable AdSense in production:

1. Set `adsense.enabled: true` in `_config.yml`
2. Set `adsense.client_id` to your AdSense publisher ID (e.g., `ca-pub-XXXXXXXXXXXXXXXX`)
3. Replace placeholder slot IDs in `_includes/ad.html` with your actual ad slot IDs

During local development, ads show as labeled placeholders.