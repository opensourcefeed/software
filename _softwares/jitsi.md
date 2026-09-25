---
layout: software
title: "Jitsi Meet"
slug: jitsi
tagline: "Free, open source video conferencing for secure online meetings"
type: open-source
license: Apache-2.0
website: https://jitsi.org
platforms: [Linux, Windows, macOS, Android, iOS]
category: video-conferencing
logo: /assets/images/software/jitsi.png
alternative_to:
  - zoom
  - microsoft-teams
  - google-meet
description: "Jitsi Meet is a free and open source video conferencing tool. Participants join from a link without an account, there are no time limits, and it is fully self-hostable for complete data control."
last_modified_at: 2026-09-25
---

## Overview

Jitsi Meet is a free and open source video conferencing application built on WebRTC. Originally developed by the Jitsi team and now maintained under 8x8, it remains a fully open source, community-driven project. Jitsi Meet works entirely in the browser with no software installation required, and can be self-hosted on your own infrastructure for complete control over meeting data.

The hosted public instance at meet.jit.si is free and has no meeting time limit. Since August 2023, the person creating a meeting on meet.jit.si must sign in with a Google, GitHub, or Facebook account, a change Jitsi introduced to curb abuse of the free service; participants joining an existing meeting still do not need an account. Self-hosted deployments have no such requirement by default and give organizations full control over authentication, server capacity, and data.

## Key Features

- **No account needed to join** — Participants join from a link in the browser without registering; on meet.jit.si only the meeting creator signs in, and self-hosted servers can run without any login
- **Self-hosting** — Deploy on your own Linux server using the official Debian/Ubuntu packages or Docker image
- **End-to-end encryption** — E2EE available for meetings with up to 20 participants (requires Chromium-based browser)
- **Video meetings** — HD video and audio; participant limits depend on server capacity when self-hosted
- **Screen sharing** — Share entire screen or a specific application window
- **Live streaming** — Stream meetings directly to YouTube Live
- **Recording** — Record meetings locally or to Dropbox (self-hosted deployments with Jibri)
- **Embeddable** — Integrate into websites and apps via the Jitsi Meet API and IFrame API
- **Lobby and moderation** — Waiting room, mute controls, participant kick, and password-protected rooms

## Use Cases

- **Privacy-conscious teams** — Self-hosted deployments keep all meeting data on infrastructure you control, with no third-party data sharing
- **Open source communities** — Free community calls with no time limits or per-seat costs
- **Education** — Online classes with no student account requirements and no advertising
- **NGOs and nonprofits** — Secure coordination without subscription costs

## Who It's For

Jitsi Meet suits individuals, teams, and organizations that need video conferencing without subscription fees, vendor lock-in, or data sovereignty concerns. It is particularly strong for technically capable teams willing to self-host, and for communities that need occasional calls on the public instance at no cost.

For organizations that need guaranteed uptime and support, 8x8 offers a managed Jitsi-as-a-Service product. For casual or infrequent use, the public instance at meet.jit.si needs no setup beyond the host signing in.