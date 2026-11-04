---
layout: software
title: "BigBlueButton"
slug: bigbluebutton
tagline: "Open source virtual classroom and web conferencing system"
type: open-source
license: LGPL-3.0
website: https://bigbluebutton.org
developer: "BigBlueButton Inc. and community"
repository: https://github.com/bigbluebutton/bigbluebutton
latest_version: "4.0.1"
version_checked_at: 2026-11-04
platforms: [Web, Linux (server)]
category: video-conferencing
self_hostable: true
logo: /assets/images/software/bigbluebutton.svg
alternative_to:
  - google-meet
  - zoom
description: "BigBlueButton is a free, LGPL-3.0 web conferencing system for online teaching, with a whiteboard, breakout rooms, polls, recording, and Moodle integration."
last_modified_at: 2026-09-25
faq:
  - question: "Is BigBlueButton free?"
    answer: "Yes. BigBlueButton is open source under LGPL-3.0 and free to download and self-host. The cost is the server it runs on and the time to maintain it; several companies also sell managed BigBlueButton hosting for organizations that don't want to run their own server."
  - question: "Do participants need to install anything to join a BigBlueButton meeting?"
    answer: "No. BigBlueButton runs in a web browser using WebRTC, so participants join from a link on desktop or mobile without installing an app or plugin."
  - question: "What server does BigBlueButton need?"
    answer: "BigBlueButton 3.0 is installed on a dedicated Ubuntu 22.04 64-bit server. The documented minimum is 8 CPU cores, 16 GB of memory, 500 GB of disk space when recordings are enabled (50 GB without), a hostname with a TLS certificate, and open TCP ports 80/443 and UDP ports 16384–32768."
---

## Overview

BigBlueButton is an open source web conferencing system designed primarily for online education. It was started in 2007 at Carleton University in Ottawa, within its Technology Innovation Management program, where Richard Alam wrote the initial version. The project is licensed under LGPL-3.0 and is developed on GitHub, with the 3.0 release series current as of 2026.

Where general-purpose meeting tools are organized around talking heads and screen sharing, BigBlueButton is built around a presenter-led classroom model. A presenter uploads slides or documents to a shared multi-user whiteboard, and participants can annotate, answer polls, take shared notes, and move into breakout rooms, while moderators control who can speak, share a camera, or write on the board. Sessions can be recorded and played back later with the slides, whiteboard annotations, chat, and audio synchronized.

BigBlueButton is widely deployed through learning management systems. It has been integrated into the core of Moodle since Moodle 4.0, and integrations are available for Canvas, Sakai, WordPress, Drupal, and other platforms. For standalone use, the project provides Greenlight, a web front end for creating rooms, scheduling meetings, and managing recordings without an LMS.

## Self-Hosting Requirements

BigBlueButton is a server application; participants only need a web browser. The BigBlueButton 3.0 documentation specifies a dedicated server with:

- Ubuntu 22.04 64-bit with a Linux 5.x kernel
- 8 CPU cores with high single-thread performance and 16 GB of memory with swap enabled
- 500 GB of free disk space for recordings, or 50 GB if recording is disabled
- A hostname (such as bbb.example.com) for a TLS certificate
- TCP ports 80 and 443 and UDP ports 16384–32768 reachable, with ports 80/443 not used by another web server
- 250 Mbit/s symmetrical bandwidth or more

These requirements are heavier than many other self-hosted meeting tools, reflecting the whiteboard, recording, and media-processing components bundled with the server. Organizations without the capacity to run it can use one of several commercial BigBlueButton hosting providers.

## Key Features

- **Multi-user whiteboard** — Upload slides and documents, annotate them together, and give whiteboard access to participants
- **Breakout rooms** — Split participants into smaller groups for a set time, then bring them back to the main room
- **Polls** — Quick polls with results that can be shared on the presentation
- **Shared notes** — A collaborative notes pad available to everyone in the session
- **Recording and playback** — Recordings replay slides, annotations, chat, and audio in sync
- **Learning analytics dashboard** — Moderators can see participation such as talk time, messages, and poll responses
- **Moderator controls** — Manage microphones, cameras, whiteboard access, and waiting rooms
- **Browser-based client** — Join from desktop or mobile browsers via WebRTC with no install
- **LMS integration** — Built into Moodle and available for Canvas, Sakai, WordPress, Drupal, and others

## Use Cases

- **Online and hybrid teaching** — Schools and universities running live classes inside their LMS
- **Training and workshops** — Presenter-led sessions with slides, polls, and group exercises in breakout rooms
- **Public-sector deployments** — Organizations that need conferencing hosted on their own infrastructure
- **Recorded lectures** — Sessions that students can replay later with synchronized slides and annotations

## Who It's For

BigBlueButton is best suited to educators, training teams, and institutions that want a self-hosted virtual classroom with teaching tools built in, particularly those already using Moodle or another supported LMS. It is less suited to casual, ad-hoc calls between a few people, where a lighter tool is quicker to set up, and its dedicated-server requirements mean small organizations may prefer managed hosting over running it themselves.
