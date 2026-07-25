---
layout: software
title: "Celluloid"
slug: celluloid
tagline: "Simple GTK frontend for mpv"
type: open-source
license: GPL-3.0
website: https://celluloid-player.github.io/
platforms: [Linux]
category: media-player
logo: /assets/images/software/celluloid.png
alternative_to: []
description: "Celluloid (formerly GNOME MPV) is a simple GTK-based graphical frontend for mpv. It provides a clean, GNOME-style interface while leveraging mpv's powerful playback engine."
last_modified_at: 2026-07-25
---

## Overview

Celluloid is a free and open source media player that wraps mpv's powerful playback engine in a straightforward GTK3 interface. Originally called GNOME MPV, it was renamed to Celluloid to reflect its broader ecosystem — it works on any GTK-based desktop environment, not just GNOME.

Celluloid keeps the UI simple: a playlist sidebar, standard playback controls, and access to mpv's configuration options through a preferences dialog. Under the hood, all video decoding and rendering is handled by mpv, so Celluloid inherits mpv's excellent format support and GPU acceleration without requiring users to edit mpv's configuration files.

## Key Features

- **mpv-powered playback** — Full format support and GPU acceleration inherited from mpv
- **Drag-and-drop playlist** — Sidebar playlist with drag-and-drop reordering and file addition
- **Preferences dialog** — Configure mpv options through a GUI without editing `mpv.conf` manually
- **Keyboard shortcuts** — Supports mpv's comprehensive set of keyboard shortcuts for power users
- **MPRIS integration** — Desktop integration with media keys and on-screen notifications on Linux
- **Lightweight GTK interface** — Native GTK3 interface that blends with GNOME, Xfce, and other GTK desktops

## Use Cases

- **GNOME and GTK desktop users** — A media player that looks and feels native in a GTK environment
- **Users who want mpv power without config files** — All of mpv's capabilities behind a familiar GUI
- **Casual media playback** — Drag a file in, press play — no setup or configuration needed

## Who It's For

Celluloid is for Linux users who want mpv's excellent playback engine wrapped in a clean, intuitive GTK interface. It bridges the gap between mpv's command-line/OSC-based interface and a traditional GUI media player.