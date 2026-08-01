---
layout: software
title: "mpv"
slug: mpv
tagline: "A free and open source media player based on MPlayer and mplayer2"
type: open-source
license: GPL-2.0-or-later
website: https://mpv.io/
platforms: [Windows, macOS, Linux, BSD]
category: media-player
logo: /assets/images/software/mpv.png
alternative_to:
  - quicktime
  - windows-media-player
description: "mpv is a free, open source, cross-platform media player with GPU-accelerated video playback, a minimalist on-screen controller, and scripting support."
last_modified_at: 2026-07-26
---

## Overview

mpv is a free and open source media player forked from MPlayer and mplayer2 in 2013. It focuses on high-quality video output using GPU-accelerated video decoding via OpenGL, Vulkan, and Direct3D. mpv's minimal interface — an on-screen controller (OSC) that appears only during interaction — keeps playback clean and unobtrusive.

mpv is controlled primarily through keyboard shortcuts and a powerful configuration system. It supports Lua, JavaScript, and C plugins for extending functionality, and its precise seeking and frame-stepping capabilities make it a favorite for technical users and video enthusiasts.

## Key Features

- **GPU-accelerated playback** — Supports OpenGL, Vulkan, and Direct3D rendering with hardware decoding via VAAPI, VDPAU, DXVA2, and VideoToolbox
- **High-quality upscaling** — Built-in high-quality upscalers including lanczos, ewa_lanczos, and FSRCNNX for sharpening low-resolution content
- **Scriptable interface** — Lua, JavaScript, and C plugins for custom OSD elements, playlist managers, and integration with external tools
- **On-screen controller** — Minimal OSC with seek bar, volume control, and playback buttons; fully customizable or replaceable
- **Precise seeking** — Frame-stepping and exact seeking for frame-by-frame video analysis
- **Streaming support** — Plays HTTP streams, YouTube URLs via yt-dlp integration, and network protocols

## Use Cases

- **Video enthusiasts** — Play high-bitrate 4K and HDR content with GPU acceleration and color management
- **Power users** — Automate playback with Lua scripts, integrate with home theater setups, or build custom frontends on top of mpv's libmpv
- **Minimalists** — Clean, distraction-free playback with no toolbars or chrome — just the video

## Who It's For

mpv is ideal for users who prioritize playback quality and efficiency over a traditional GUI. It suits technical users comfortable with keyboard shortcuts and configuration files, and anyone who wants a minimal, high-performance player free of interface clutter.