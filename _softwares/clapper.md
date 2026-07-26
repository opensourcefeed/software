---
layout: software
title: "Clapper"
slug: clapper
tagline: "Modern GTK4 media player with GStreamer backend"
type: open-source
license: GPL-3.0
website: https://rafostar.github.io/clapper/
platforms: [Linux]
category: media-player
logo: /assets/images/software/clapper.png
alternative_to: []
description: "Clapper is a free and open source GTK4 media player for Linux built for GNOME, using GStreamer as its backend with hardware-accelerated playback support."
last_modified_at: 2026-07-26
---

## Overview

Clapper is a modern, free and open source media player built with GTK4 and the GStreamer multimedia framework. Unlike many Linux media players that use mpv/libmpv, Clapper takes a different approach — it uses GStreamer for decoding and its own OpenGL-based rendering pipeline for video output.

Clapper is built for the GNOME desktop with GTK4, and its GStreamer-based rendering path supports hardware-accelerated playback (including VAAPI, V4L2, and NVDEC, depending on your system). It includes features like chapter support, subtitle rendering, and MPRIS integration.

## Key Features

- **GStreamer backend** — Uses GStreamer's playbin for decoding, supporting all formats GStreamer handles
- **OpenGL rendering** — Custom OpenGL video sink with hardware acceleration via VAAPI and DMABuf
- **GNOME/GTK4 native** — Built as a GTK4 app for the GNOME desktop; runs under both Wayland and X11
- **Hardware acceleration** — Supports accelerated decoding via VAAPI, V4L2, and NVDEC depending on the system
- **Chapter and subtitle support** — Navigate chapters in MKV files, load external subtitles, control subtitle timing
- **MPRIS integration** — Full MPRIS2 support for media keys and desktop integration

## Use Cases

- **GNOME desktop users** — A media player that fits naturally into a GTK4/GNOME desktop
- **Hardware acceleration seekers** — Users who want GStreamer-based accelerated video playback (VAAPI, V4L2, NVDEC)
- **Users who prefer GStreamer over mpv** — An alternative rendering stack for those already using GStreamer-based desktop environments

## Who It's For

Clapper is for Linux users who want a modern, GTK4-native media player built around GStreamer rather than mpv. It's a compelling choice for those who value a clean GNOME-style interface and GStreamer's multimedia stack.