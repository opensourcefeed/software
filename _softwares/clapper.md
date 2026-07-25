---
layout: software
title: "Clapper"
slug: clapper
tagline: "Modern GTK4 media player with GStreamer backend"
type: open-source
license: LGPL-2.1
website: https://rafostar.github.io/clapper/
platforms: [Linux]
category: media-player
logo: /assets/images/software/clapper.png
alternative_to: []
description: "Clapper is a free and open source GTK4 media player for Linux that uses GStreamer as its backend. Designed for Wayland with hardware-accelerated rendering and an adaptive, touch-friendly interface."
last_modified_at: 2026-07-25
---

## Overview

Clapper is a modern, free and open source media player built with GTK4 and the GStreamer multimedia framework. Unlike many Linux media players that use mpv/libmpv, Clapper takes a different approach — it uses GStreamer for decoding and its own OpenGL-based rendering pipeline for video output.

Clapper is designed natively for Wayland, with proper hardware-accelerated rendering via VAAPI and zero screen tearing. Its adaptive interface works well on both desktop and mobile (Phosh, GNOME Shell mobile), and it includes features like chapter support, subtitle rendering, and MPRIS integration.

## Key Features

- **GStreamer backend** — Uses GStreamer's playbin for decoding, supporting all formats GStreamer handles
- **OpenGL rendering** — Custom OpenGL video sink with hardware acceleration via VAAPI and DMABuf
- **Wayland native** — Built for Wayland from the ground up; works on X11 through XWayland as well
- **Adaptive interface** — Responsive GTK4 UI that adapts to desktop and mobile form factors
- **Chapter and subtitle support** — Navigate chapters in MKV files, load external subtitles, control subtitle timing
- **MPRIS integration** — Full MPRIS2 support for media keys and desktop integration

## Use Cases

- **Wayland users** — A media player that works flawlessly on modern Wayland compositors
- **Mobile Linux users** — Works on Phosh and other mobile environments with a touch-friendly interface
- **Users who prefer GStreamer over mpv** — An alternative rendering stack for those already using GStreamer-based desktop environments

## Who It's For

Clapper is for Linux users who want a modern, GTK4-native media player that works well on both Wayland desktops and mobile Linux devices. It's a compelling choice for those who value a clean, adaptive interface and prefer GStreamer's multimedia stack over mpv's.