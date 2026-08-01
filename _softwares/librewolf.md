---
layout: software
title: "LibreWolf"
slug: librewolf
tagline: "Privacy-hardened fork of Firefox"
type: open-source
license: MPL-2.0
website: https://librewolf.net
logo: /assets/images/software/librewolf.svg
platforms: [Windows, macOS, Linux]
category: web-browser
alternative_to:
  - chrome
  - edge
  - safari
description: "LibreWolf is a free, open source Firefox fork that strips telemetry and data-sharing partnerships, applying privacy-hardened defaults and uBlock Origin."
last_modified_at: 2026-07-26
---

## Overview

LibreWolf is a community-maintained fork of Mozilla Firefox, built on the Gecko rendering engine rather than Chromium. The project's goal is narrower than Brave's: rather than adding new privacy features, LibreWolf configures Firefox's own existing privacy settings — many of which are disabled by default — to their strictest values, and removes Mozilla's telemetry, sponsored content, and default search partnerships entirely. Because it isn't distributed through Mozilla's own build and update infrastructure, LibreWolf ships without Firefox's default Pocket integration, Mozilla account prompts, or any data sent back to Mozilla.

Being Gecko-based rather than Chromium-based matters for two reasons: it isn't compatible with Chrome extensions (it uses Firefox's WebExtensions API instead, which overlaps significantly but isn't identical), and it helps preserve engine diversity on the web at a time when the vast majority of browsers share Google's Blink engine. LibreWolf ships uBlock Origin pre-installed and enables resistFingerprinting and other hardening flags most users would otherwise have to configure manually in `about:config`.

## Key Features

- **Firefox/Gecko engine** — Independent rendering engine, not based on Chromium
- **Telemetry removed** — No data sent to Mozilla; sponsored content and default search partnerships stripped out
- **uBlock Origin pre-installed** — Ad and tracker blocking enabled out of the box
- **Fingerprinting resistance** — Hardened privacy settings enabled by default, avoiding manual `about:config` tweaking
- **Firefox extension compatibility** — Supports Firefox's WebExtensions, including most privacy and productivity add-ons

## Use Cases

- **Firefox users wanting stronger defaults** — Same engine and extension ecosystem, hardened out of the box
- **Engine diversity advocates** — An alternative to the Chromium-dominated browser landscape
- **Fingerprinting-resistant browsing** — Reduced tracking surface without manual configuration

## Who It's For

LibreWolf is aimed at privacy-focused users who prefer Firefox's Gecko engine over Chromium and want Firefox's own privacy protections turned on to their strongest settings by default, without Mozilla's telemetry or commercial partnerships. It's free and available for Windows, macOS, and Linux.
