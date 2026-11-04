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
| Quick answer (`verdict`) | ❌ (auto "Is X open source?" only) | ✅ | ❌ |
| Per-alternative best for / gains / trade-offs / switching | ❌ | ✅ (front matter) | ❌ |
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
- Why switch from the proprietary tool (cost, freedom, privacy), in one or two short paragraphs. This is the *only* place this content lives.

**Front matter adds the depth (revised 2026-11-04):**
- `verdict`: a 1–2 sentence quick answer ("X is the closest open source alternative to Y; choose Z if …"), shown above the fold.
- Each `alternatives` entry may be an object with `best_for` (a short phrase), and optionally `gains`, `trade_offs`, and `migration` — what *this alternative* changes for someone leaving *this proprietary tool*. These are comparisons specific to the page, not feature breakdowns, so they don't overlap the software page.
- `faq` and `comparison` (with optional `row_label`) for pages with enough search demand. Base FAQ questions on real Search Console queries (`scripts/gsc-report.rb queries --page …`).
- When only one or two genuine open source options exist, say so in the verdict rather than padding the list.

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
| Software page (proprietary) | Top 3 alternatives' software pages (cards) + its alternatives page | software name / "Compare them side by side" | an alternatives page exists for it |
| Software page (any) | Up to 6 software pages in the same category, open source first | software name | always |
| Alternatives page | Its category's roundup | roundup title | the proprietary tool's category has a roundup |

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
license: GPL-3.0           # SPDX identifier (a key of license_urls in _config.yml), "Proprietary", or "Source-available"
license_note: "Optional detail, e.g. which components or editions the license covers."
website: https://example.com
developer: "Company, foundation, or community"
repository: https://github.com/org/repo   # open source only; must resolve (git ls-remote)
latest_version: "1.2.3"                   # newest stable release tag in the repository
version_checked_at: 2026-11-04            # required with latest_version
pricing: "Free tier; paid plans from …"   # optional; open source pages show "Free" by default
self_hostable: true                       # optional; you can run its server yourself
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
alternatives:                         # ordered; plain slugs still work
  - slug: gimp
    best_for: "Photo editing, retouching, and compositing"
    gains: "Optional: what you gain over the proprietary tool."
    trade_offs: "Optional: what you give up."
    migration: "Optional: how to switch."
  - slug: krita
    best_for: "Digital painting and illustration"
description: "Meta description for search engines."
verdict: "[GIMP](/software/gimp/) is the closest … Choose [Krita](/software/krita/) for …"
last_modified_at: 2025-01-01
---
```

## Content Style Guidelines

- **Tone:** Neutral and factual. No marketing language.
- **Attribution:** Maintainer signs off as **Niyas C / OpenSourceFeed**
- **Accuracy:** Verify license info, platform support, and website URLs before publishing
- **Updates:** Update `last_modified_at` whenever content changes
- **Images:** All logos must have descriptive alt text (`alt="[Software Name] logo"`)

### Roundup Page

```yaml
---
layout: roundup
title: "Best Open Source X"
slug: x
category: category-slug
tagline: "Short tagline"
description: "Meta description."
verdict: "Quick answer naming the top pick and when to choose others."
picks:                       # ranked; without picks, every open-source item in the category is listed
  - slug: qbittorrent
    best_for: "Most people: a full-featured, ad-free all-rounder"
methodology: "How we picked (shown under the comparison table)."
faq: []                      # optional
last_modified_at: 2025-01-01
---
```

The roundup comparison table (license, desktop and mobile platforms, self-hostable, latest version) is generated from each pick's software front matter; never hand-write it.

- **Dates:** bump `last_modified_at` only for real content changes, not title or description tweaks.

## Freshness Process

Facts on software pages go stale at different speeds: versions change weekly, licenses and pricing a few times a year, platforms and features more slowly. The routine below keeps each layer current.

| When | What | How |
|---|---|---|
| Every build | Freshness warnings: versions not checked in 60 days, pages not updated in a year | Printed by `test/build_smoke_test.rb` (non-failing) |
| Monthly | Refresh versions and check links | `ruby scripts/check-freshness.rb --links`; review each version change against the project's release notes, then `--write` |
| Monthly | Find pages losing search visibility | `ruby scripts/gsc-report.rb compare --split <date a month ago>`; review pages whose position or clicks dropped |
| Quarterly | Re-verify licenses, pricing, and platforms on the 20 pages with the most impressions | `ruby scripts/gsc-report.rb pages --limit 20`, then check each project's license file, pricing page, and downloads |
| On any license change you hear about | Update `license`/`license_note`, the alternatives pages that list it, and the "Is X open source?" wording | Search `_softwares/` and `_alternatives/` for the slug |

Rules:

- `scripts/check-freshness.rb --write` updates only `latest_version` and `version_checked_at`. A version refresh is not a content change, so `last_modified_at` stays the same.
- When you edit facts or text, bump `last_modified_at`; never bump it without a content change.
- Projects with unusual release tags set `version_tag` (a regex; the first capture group is the version). If the script reports "NOT newer", the pattern needs fixing, not the page.
- Projects that stop releasing (no release in about a year) should be flagged on their page and dropped from roundup picks, as with Continue and GPT4All.
