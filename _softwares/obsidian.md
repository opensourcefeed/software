---
layout: software
title: "Obsidian"
slug: obsidian
tagline: "Proprietary note-taking app built on local Markdown files"
type: proprietary
license: Proprietary (free for personal use)
website: https://obsidian.md
platforms: [Windows, macOS, Linux, Android, iOS]
category: note-taking
logo: /assets/images/software/obsidian.svg
alternative_to: []
has_alternatives: true
description: "Obsidian is a closed source note-taking app that stores notes as local Markdown files with bi-directional linking, free for personal use but with proprietary sync and publishing add-ons."
last_modified_at: 2026-08-01
---

## Overview

Obsidian was released in 2020 by Licat (Shida Li) and Erica Xu, operating as Dynalist Inc. (later Obsidian.md), after the pair had already built the outliner app Dynalist. Rather than following Notion and Evernote toward a proprietary cloud database, Obsidian stores every note as a plain `.md` file on the user's own device, inside a folder referred to as a "vault." This local-file approach means notes remain readable and editable with any text editor even without Obsidian installed, and the app itself works entirely offline by default.

The core application is closed source and distributed free of charge for personal use, with a paid commercial license required for organizational use and paid add-ons — Obsidian Sync and Obsidian Publish — covering optional end-to-end encrypted multi-device sync and static site publishing. Because vaults are just folders of Markdown files, users who don't want the official paid sync commonly sync vaults themselves via Syncthing, Dropbox, or a self-hosted WebDAV/Git setup, which has made a large third-party plugin and theme ecosystem grow around the core app despite it not being open source itself.

## Key Features

- **Local Markdown files** — Every note is a plain `.md` file stored in a folder on the user's own device
- **Bi-directional linking** — `[[wikilink]]`-style links between notes with automatic backlinks
- **Graph view** — Visualize connections between notes as an interactive node graph
- **Canvas** — Freeform infinite-canvas board for arranging notes, images, and cards spatially
- **Plugin ecosystem** — Thousands of community plugins and themes for extending functionality
- **Offline-first** — Fully functional without an internet connection or account
- **Optional paid sync** — End-to-end encrypted multi-device sync and version history (Obsidian Sync, paid add-on)
- **Optional publishing** — Turn a vault or part of it into a public website (Obsidian Publish, paid add-on)

## Use Cases

- **Personal knowledge management** — Building a linked "second brain" of notes and ideas
- **Daily journaling** — Templated daily notes that link out to broader topics
- **Research and writing** — Organizing sources, citations, and drafts through backlinks rather than folders
- **Developers and technical writers** — Keeping documentation as version-controllable plain-text files

## Who It's For

Obsidian is aimed at individuals who want Notion- or Roam-style networked note-taking but prefer their notes to live as local, future-proof plain-text files rather than inside a proprietary cloud database. It's free for personal use, with paid tiers for its official sync and publishing services and for commercial/team use.
