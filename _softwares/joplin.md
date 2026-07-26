---
layout: software
title: "Joplin"
slug: joplin
tagline: "Privacy-focused, open source note-taking app"
type: open-source
license: AGPL-3.0-or-later
website: https://joplinapp.org
platforms: [Linux, Windows, macOS, Android, iOS]
category: note-taking
logo: /assets/images/software/joplin.svg
alternative_to:
  - evernote
description: "Joplin is a free, open source Markdown note-taking app with end-to-end encryption and multi-platform sync, built as a privacy-focused alternative to Evernote."
last_modified_at: 2026-07-26
---

## Overview

Joplin is a free and open source note-taking and to-do application created by Laurent Cozic, with its source code repository on GitHub dating to January 2017. Notes are stored in Markdown format, and the application is distributed under the AGPL-3.0-or-later license. Joplin can import notebooks directly from Evernote's .enex export format, preserving formatted content, attachments, and metadata such as tags and creation dates, which makes it a common landing point for users migrating away from Evernote.

The application is designed to work offline first, with all data stored locally and optionally synchronized across devices. Sync is supported through Joplin Cloud (the project's own hosted service), as well as third-party storage backends including Dropbox, OneDrive, WebDAV, Nextcloud, and S3-compatible storage. Notes and attachments can be encrypted end-to-end before syncing, so that data stored on third-party servers remains unreadable to the storage provider. Joplin also supports a plugin system and a web clipper browser extension for saving web pages and screenshots directly into notes.

## Key Features

- **Markdown notes** — Notes and to-do items written in Markdown, with a live preview and rich text editing mode
- **End-to-end encryption** — Notes and attachments can be encrypted before syncing to any storage backend
- **Flexible sync options** — Joplin Cloud, Dropbox, OneDrive, WebDAV, Nextcloud, and S3-compatible storage
- **Evernote import** — Direct import of .enex files, including tags, attachments, and metadata
- **Plugin system** — Extend functionality with community and official plugins
- **Web clipper** — Browser extension for Firefox and Chrome to save web pages and screenshots into notes
- **Tagging and search** — Organize notes with tags, notebooks, and full-text search
- **Offline-first** — All data is stored locally, with sync as an optional layer

## Use Cases

- **Personal note-taking** — Journaling, to-do lists, and everyday note organization
- **Evernote migration** — Moving existing Evernote libraries to an open source, self-hostable alternative
- **Privacy-conscious sync** — Keeping notes encrypted while syncing through common cloud storage providers
- **Cross-device workflows** — Writing and reading notes across desktop and mobile platforms

## Who It's For

Joplin is suited to individuals and teams who want a Markdown-based note-taking app with control over where their data is stored, including users who prefer to sync through their own cloud storage or self-hosted WebDAV/Nextcloud server rather than a proprietary vendor's servers. It is also a practical option for anyone migrating away from Evernote who needs a straightforward import path for existing notebooks.
