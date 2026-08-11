# opensourcefeed.org — /software/ section

Jekyll static site: an open-source software directory with per-tool pages, "open source alternatives to [proprietary tool]" pages, and category "roundup" pages.

**Read `.clinerules` first** — it's the authoritative, actively-maintained rules file (tech stack, code style, front matter requirements, testing checklist, "Do Not" list). `docs/CONTENT-POLICY.md` has the full page-type non-overlap matrix and linking rules; `docs/ARCHITECTURE.md` has the deeper technical design. Do not duplicate either here — this file is only a map to them plus a few things not written down elsewhere.

## Collections (`_config.yml`)

- `_softwares/` → `/:slug/` — one page per tool (open-source or proprietary)
- `_alternatives/` → `/alternative-to/:slug/` — "alternatives to [proprietary]" pages, one per proprietary tool with `has_alternatives: true`
- `_roundups/` → `/best-open-source-:slug/` — "Popular Open Source X" category roundups (only categories listed in `roundup_pages` below have one)

`baseurl: /software` applies to generated hrefs/permalinks only, not to `_site/` output paths — built files land at the repo-relative path (e.g. `_site/qbittorrent/index.html`), not under `_site/software/`.

## Categories

Not a `_data/` file — both `category_names` (slug → display name, used by the `/software/` directory filter) and `roundup_pages` (category slug → roundup slug) are plain maps directly in `_config.yml`.

## Logos

`assets/images/software/<slug>.svg` (preferred) or `.png` — mixed in practice (~88 svg / ~24 png). Existing SVGs mostly follow the Simple Icons style (24x24 viewBox, single brand-color path, `<title>`). When an accurate official icon can't be sourced (e.g. no network access), a plain monogram-circle SVG in the same viewBox is an acceptable placeholder — don't fabricate a brand path and pass it off as the real logo.

## Standing content bar

SEO-friendly, factually correct, useful to the reader, professionally written (neutral/factual tone, no marketing language), no thin content. Attribution: "Niyas C / OpenSourceFeed".
