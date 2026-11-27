---
layout: software
title: "VLC Media Player"
slug: vlc
tagline: "Free and open source cross-platform multimedia player"
type: open-source
license: GPL-2.0-or-later
website: https://www.videolan.org/vlc/
developer: "VideoLAN"
repository: https://code.videolan.org/videolan/vlc
latest_version: "3.0.24"
version_checked_at: 2026-11-27
platforms: [Windows, macOS, Linux, Android, iOS, ChromeOS]
category: media-player
logo: /assets/images/software/vlc.png
alternative_to:
  - windows-media-player
  - quicktime
description: "VLC Media Player is a free, open source multimedia player by VideoLAN that plays almost every video and audio format on all major platforms."
last_modified_at: 2026-11-04
---

## Overview

VLC Media Player is a free and open source cross-platform multimedia player developed by the VideoLAN project. Originally created as a student project at École Centrale Paris in 1996, VLC has grown into one of the most widely used media players in the world, with over 6 billion downloads across all platforms.

VLC is maintained by VideoLAN, a non-profit organization, and released under the GNU General Public License version 2 or later. It requires no proprietary codecs or additional plugins — its built-in codec library handles virtually every audio and video format in use today, including formats that commercial players struggle with.

## Is VLC Open Source?

Yes. The VLC application is released under the GNU GPL version 2 or later and maintained by the non-profit VideoLAN organization, with source code hosted on VideoLAN's own [GitLab](https://code.videolan.org/videolan/vlc) (mirrored on [GitHub](https://github.com/videolan/vlc)). Its playback engine, libVLC, and most of its modules are licensed differently: VideoLAN relicensed them to the more permissive LGPL version 2.1 or later in 2011–2012. That split is why other applications, including commercial ones, can embed libVLC without releasing their own source code, while VLC itself stays under the GPL. By comparison, [Signal](/software/signal/) and [Element](/software/element/) use the AGPL-3.0, a stricter copyleft license that also covers software offered over a network.

## Key Features

- **Universal format support** — Plays MKV, MP4, AVI, MOV, FLAC, MP3, OGG, and hundreds of other formats without additional codecs
- **Network streaming** — Plays HTTP, RTSP, RTP, HLS, and MMS streams; can also act as a streaming server
- **Subtitle support** — Loads external subtitle files (SRT, ASS, SSA) and handles embedded subtitles in MKV and MP4
- **Video and audio filters** — Real-time equalizer, audio normalization, video deinterlacing, and color correction
- **Playlist and media library** — Manages local files, podcasts, and internet radio streams in a unified library
- **Cross-platform** — Runs on Windows, macOS, Linux, Android, iOS, and ChromeOS; the mobile apps focus on playback and omit some desktop features such as streaming-server mode and advanced conversion

## Use Cases

- **Home users** — Playing local video and audio files without worrying about codec compatibility
- **Power users** — Streaming media over a local network or the internet using VLC as both client and server
- **Developers and sysadmins** — Transcoding video files via the command-line interface or converting between formats
- **Educators and presenters** — Playing media files reliably in diverse environments without installing codecs

## Who It's For

VLC is for anyone who needs a reliable, no-configuration media player. It is completely free with no ads, no tracking, and no subscription. Available for all major desktop and mobile platforms, it is equally suited to casual home use and technical workflows.