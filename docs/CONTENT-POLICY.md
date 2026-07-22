# Content Policy: Non-Overlap & Linking Rules

## Core Principle

Each page type answers **exactly one question**. Content must never be duplicated across page types. This ensures:

- No SEO cannibalization (each page ranks for its own intent)
- Clean, focused user experience
- Maintainability — content lives in one place

## Page Types & Their Questions

| Page type | URL | Question it answers |
|---|---|---|
| Software page | `/software/[slug]/` | "What is this software and what can it do?" |
| Alternatives page | `/software/alternative-to/[slug]/` | "What free alternatives exist for [proprietary] and why switch?" |
| Software listing | `/software/` | "What software is covered on this site?" |
| Alternatives landing | `/software/alternative-to/` | "What proprietary tools have open source alternatives?" |

## Non-Overlap Matrix

| Content element | Software page | Alternatives page | Landing pages |
|---|---|---|---|
| Full feature breakdown | ✅ | ❌ | ❌ |
| License / pricing detail | ✅ | mention only | ❌ |
| Why switch from proprietary | ❌ | ✅ | ❌ |
| Side-by-side comparison table | ❌ | ✅ | ❌ |
| One-liner description | ✅ | ✅ (reused from front matter) | ✅ |
| Platform support | ✅ | ❌ | ❌ |
| Use case / who it's for | ✅ | ❌ | ❌ |

## Content Placement Guide

### Software Pages (`_softwares/[slug].md`)

**Body content should include:**
- Full feature breakdown
- Use cases and who the software is for
- License and pricing details
- Platform support details
- Pros and cons (optional)

**Body content must NOT include:**
- "Why switch from [proprietary]" — that belongs on the alternatives page
- Comparison tables with competitors — that belongs on the alternatives page
- Lists of alternatives — the CTA banner handles this linking

**Front matter `description`:** A 1–2 sentence summary used in cards and meta tags. No feature deep-dive here.

### Alternatives Pages (`_alternatives/[slug].md`)

**Body content should include:**
- Why switch from the proprietary tool (cost, freedom, privacy)
- 2–3 sentences only — this is the *only* place this content lives

**Body content must NOT include:**
- Full feature breakdowns of individual alternatives — link to their software pages instead
- License/pricing details of alternatives — mention only ("free and open source")
- Platform support lists for alternatives — the card pulls this from front matter, not body

**Proprietary summary:** Pulled automatically from `_softwares/[proprietary_slug].md` front matter `description`. Do not re-write it in the alternatives page body.

### Landing Pages (`software/index.html`, `software/alternative-to/index.html`)

**Content is auto-generated from front matter only:**
- Card grids with one-liner descriptions
- No body content, no feature breakdowns, no comparisons

## Internal Linking Rules

### Alternatives Page Links

| From | To | Anchor text |
|---|---|---|
| Alternatives page | Proprietary software page | "learn more about [name]" |
| Alternatives page | Each alternative's software page | "see full details" or the software name |

### Software Page Links

| From | To | Anchor text | Condition |
|---|---|---|---|
| Software page (proprietary) | Its alternatives page | "open source alternatives to [name]" | `has_alternatives: true` |
| Software page (open-source) | Alternatives page(s) | "open source alternative to [proprietary name]" | `alternative_to` non-empty |

### Breadcrumbs

All pages include breadcrumbs:

- **Software page:** Home > Software > [page title]
- **Alternatives page:** Home > Software > Alternative To > [page title]
- **Software listing:** Home > Software
- **Alternatives landing:** Home > Software > Alternative To

## Front Matter Reference

### Software Page

```yaml
---
layout: software
title: "Software Name"
slug: software-slug
tagline: "Short tagline"
type: open-source          # or: proprietary
license: GPL-3.0           # SPDX identifier or "Proprietary" / "Freeware"
website: https://example.com
platforms: [Linux, Windows, macOS]
category: image-editing    # used for grouping on /software/ index
logo: /assets/images/software/slug.png
alternative_to:            # open-source pages only: proprietary slugs this replaces
  - photoshop
has_alternatives: true     # proprietary pages only: triggers alternatives CTA
description: "1-2 sentence summary for cards and meta tags."
last_modified_at: 2025-01-01
---
```

### Alternatives Page

```yaml
---
layout: alternative-to
title: "Open Source Alternatives to [Proprietary Name]"
slug: proprietary-slug
proprietary_slug: proprietary-slug    # references _softwares/ file
alternatives:                         # list of open-source slugs from _softwares/
  - gimp
  - krita
description: "Meta description for search engines."
last_modified_at: 2025-01-01
---
```

## Content Style Guidelines

- **Tone:** Neutral and factual. No marketing language.
- **Attribution:** Maintainer signs off as **Niyas C / OpenSourceFeed**
- **Accuracy:** Verify license info, platform support, and website URLs before publishing
- **Updates:** Update `last_modified_at` whenever content changes
- **Images:** All logos must have descriptive alt text (`alt="[Software Name] logo"`)