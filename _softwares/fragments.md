---
layout: software
title: "Fragments"
slug: fragments
tagline: "GNOME-native BitTorrent client built with GTK4 and libadwaita"
type: open-source
license: GPL-3.0
website: https://apps.gnome.org/Fragments/
platforms: [Linux]
category: torrent-client
logo: /assets/images/software/fragments.svg
alternative_to:
  - utorrent
description: "Fragments is a free, open source BitTorrent client built with GTK4 and libadwaita, designed to look and behave like a native part of the GNOME desktop rather than a cross-platform port."
last_modified_at: 2026-08-11
---

## Overview

Fragments was built specifically for GNOME, using GTK4 and libadwaita so it follows GNOME's Human Interface Guidelines and visually matches other GNOME apps like Files and Settings, rather than reusing a Qt or cross-platform toolkit UI. It's distributed through Flathub as a Flatpak, which is now the primary way most users install it.

Rather than reimplementing BitTorrent protocol handling itself, Fragments uses `transmission-daemon` as its backend, connecting to it the same way Transmission's own web UI does. This lets the project focus entirely on the GNOME-native front end while relying on Transmission's mature, well-tested torrent engine underneath.

## Key Features

- **Native GNOME design** — Built with GTK4 and libadwaita to match GNOME's design language and adapt to light/dark themes automatically
- **Transmission backend** — Uses `transmission-daemon` for protocol handling, inheriting its stability and protocol support
- **Flatpak-first distribution** — Packaged and maintained primarily through Flathub
- **Magnet link and .torrent file support** — Standard support for adding torrents by file or magnet URI
- **Simple, minimal interface** — Focused on core add/download/seed functionality rather than a large settings surface

## Use Cases

- **GNOME desktop users** — Anyone who wants a torrent client that visually and behaviorally fits a GNOME desktop instead of a ported cross-platform UI
- **Flatpak-based Linux setups** — Distributions and installs that favor Flatpak as the primary application format
- **Simple, occasional torrent use** — Users who want a straightforward client for occasional downloads like Linux ISOs, without Deluge- or qBittorrent-level configuration options

## Who It's For

Fragments is aimed at GNOME users who care about visual and interaction consistency with the rest of their desktop and are comfortable with Flatpak as their primary install method. It trades the deeper configurability of Transmission's own front ends or qBittorrent for a smaller, more tightly scoped app that looks native.
