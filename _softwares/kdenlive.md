---
layout: software
title: "Kdenlive"
slug: kdenlive
tagline: "Free and open source non-linear video editor"
type: open-source
license: GPL-3.0-or-later
website: https://kdenlive.org
platforms: [Linux, Windows, macOS]
category: video-editing
logo: /assets/images/software/kdenlive.svg
alternative_to:
  - premiere-pro
description: "Kdenlive is a free, open source non-linear video editor built on MLT and KDE Frameworks, offering multi-track editing and many effects."
last_modified_at: 2026-07-26
---

## Overview

Kdenlive (KDE Non-Linear Video Editor) is a free and open source video editor originally created by Jason Wood in 2002. The project underwent a major rewrite released as version 0.7 in November 2008, and around 2014 began the process of moving under the KDE umbrella, completing its port to KDE Frameworks 5 with the 2015.04.0 release as part of KDE Applications 5. A significant internal refactoring effort started in early 2017 and shipped on April 22, 2019. Today the project is maintained by a team of KDE developers, with Jean-Baptiste Mardelle a prominent contributor and release manager. Kdenlive is distributed under the GPL-3.0-or-later license, with portions of its source available under GPL-2.0-or-later.

Kdenlive is built on top of the MLT Framework for multimedia processing and rendering, and on KDE Frameworks and Qt for its user interface and desktop integration. This architecture lets it support a broad range of audio and video codecs and container formats via MLT and its underlying libraries (including FFmpeg). The application stores projects as XML and supports non-blocking (background) rendering, so editing can continue while a project renders. Kdenlive runs on Linux, Windows (7 and later, 64-bit), and macOS, as well as FreeBSD; Linux has historically been the primary development platform, and Windows and macOS builds, while officially supported and distributed, have at times lagged behind in stability and packaging polish compared to the Linux release.

## Key Features

- **Multi-track non-linear editing** — Unlimited video and audio tracks with a timeline-based editing workflow
- **Proxy clips** — Generate lower-resolution proxy media to edit smoothly with high-resolution footage
- **Keyframeable effects** — Most effects and transitions support keyframe animation over time
- **Title editor** — Built-in tool for creating and animating text and graphic overlays
- **Audio tools** — Normalization, equalization, and other audio processing effects
- **Color correction and masking** — Visual effects tools for grading and compositing
- **Broad format support** — Wide range of audio/video codecs and containers via the MLT Framework and FFmpeg
- **Non-blocking rendering** — Continue editing while a project renders in the background

## Use Cases

- **Independent filmmakers** — Editing short films and features without licensing costs
- **Content creators** — Producing videos for YouTube and other platforms
- **Educators and students** — Learning video editing concepts in academic settings
- **Open source contributors** — Editing promotional and documentation videos for FOSS projects

## Who It's For

Kdenlive is suited to hobbyists, students, and professionals who want a fully featured, no-cost video editor, particularly those already working in a Linux desktop environment. It is also a reasonable option on Windows and macOS for users who accept that platform support, while functional, has historically been less polished than on Linux.
