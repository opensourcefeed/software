---
layout: software
title: "Shotcut"
slug: shotcut
tagline: "Free, open source, cross-platform video editor"
type: open-source
license: GPL-3.0
website: https://shotcut.org
platforms: [Linux, Windows, macOS]
category: video-editing
logo: /assets/images/software/shotcut.svg
alternative_to:
  - premiere-pro
  - davinci-resolve
description: "Shotcut is a free, open source, cross-platform video editor built on the MLT Framework, offering native timeline editing and wide format support via FFmpeg."
last_modified_at: 2026-07-26
---

## Overview

Shotcut is a free and open source video editor developed by Dan Dennedy, one of the original developers of the MLT Framework, the multimedia processing library that also underpins the Kdenlive video editor. Dennedy first released a Shotcut editor around 2004, but the project that carries the name today is a from-scratch rewrite begun in 2011 and built on a Qt-based interface, with its first modern release appearing in 2012. The GitHub repository for the project (mltframework/shotcut) was created in April 2012 and is distributed under the GPL-3.0 license.

Because Shotcut and Kdenlive both rely on the MLT Framework for their underlying playback and rendering engine, they share a common lineage despite offering distinct editing interfaces and workflows. Shotcut uses FFmpeg for its format support, which allows it to open and encode a very wide range of audio, video, and image formats without requiring a separate import or transcoding step before editing can begin. The project is actively maintained, with regular releases distributed for Linux, Windows, macOS, and BSD.

## Key Features

- **Native timeline editing** — Files can be added directly to the timeline without an import or proxy-generation step
- **Wide format support** — Built on FFmpeg, supporting a broad range of audio, video, and image codecs and containers
- **Cross-platform Qt interface** — A single, consistent UI across Linux, Windows, macOS, and BSD
- **GPU-accelerated processing** — Optional GPU-based effects processing for improved performance
- **Multi-track editing** — Unlimited audio and video tracks with filters applied per-clip or per-track
- **Waveform and scope monitoring** — Audio waveforms, histograms, and video scopes for color and level correction
- **4K and high-resolution support** — Editing and export up to 4K resolution and beyond
- **Keyframeable filters** — A library of filters (color, blur, text, transitions, etc.) with keyframe animation support

## Use Cases

- **Independent video creators** — Editing YouTube videos, vlogs, and short films without licensing costs
- **Documentary and short-form editors** — Multi-track editing with color correction and audio mixing
- **Screencasters and tutorial creators** — Combining screen recordings with overlays and titles
- **Cross-platform teams** — Sharing project files between Linux, Windows, and macOS users

## Who It's For

Shotcut suits hobbyists, students, and independent creators who want a capable, no-cost video editor, as well as Linux users who need a full-featured native editor rather than a web-based or Windows/macOS-only tool. Its FFmpeg-based format support also makes it a practical choice for editors who work with footage from a wide variety of cameras and sources.
