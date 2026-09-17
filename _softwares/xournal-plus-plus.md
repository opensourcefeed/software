---
layout: software
title: "Xournal++"
slug: xournal-plus-plus
tagline: "Open source handwritten notes and PDF annotation app"
type: open-source
license: GPL-2.0
website: https://xournalpp.github.io
platforms: [Linux, Windows, macOS]
category: pdf-tools
logo: /assets/images/software/xournal-plus-plus.svg
alternative_to:
  - adobe-acrobat
  - xodo
description: "Xournal++ is a free, open source handwriting and note-taking app with PDF annotation support, built for pen/tablet input and precise markup on top of existing documents."
featured_image: xournal-plus-plus.webp
last_modified_at: 2026-09-17
faq:
  - question: "Is Xournal++ open source?"
    answer: "Yes. Xournal++ is released under the GPL-2.0 license, with source published on GitHub."
---

## Overview

Xournal++ is a rewrite and continuation of the earlier Xournal note-taking app, reimplemented in C++ with GTK3 to add PDF background support, better performance, and pressure-sensitive pen input. Rather than starting as a PDF viewer that added annotation, it started as a handwritten notes application that layers ink over PDF pages as a background, making PDF markup one of its core use cases rather than an add-on.

Xournal++ is developed under the GPL-2.0 license, with source and releases hosted on GitHub, and ships native builds for Linux, macOS, and Windows plus a distribution-independent Linux AppImage. It supports pressure-sensitive input from tablets like Wacom devices, which makes it a common choice for annotating PDFs by hand rather than typing text boxes over them.

## Key Features

- **PDF background annotation** — Load a PDF as a page background and write, highlight, or draw directly on top of it
- **Pressure-sensitive pen input** — Smooth, low-latency ink with support for Wacom and other pen/tablet hardware
- **Shape and drawing tools** — Pen, highlighter, shapes (line, arrow, circle, rectangle, spline), set-square and compass tools, and grid snapping
- **LaTeX equations** — Insert rendered LaTeX directly into notes
- **Audio recording sync** — Record audio alongside handwritten notes, synced to what was written at that moment
- **Lua plugin support** — Extend the app with custom scripts

## Use Cases

- **Marking up PDFs by hand** — Reviewing or annotating documents with a stylus rather than typed comments
- **Handwritten note-taking** — Lecture or meeting notes on a tablet or touchscreen laptop
- **Math and technical notes** — LaTeX equation support for STEM coursework or documentation
- **Recorded lecture notes** — Audio-synced notes for reviewing what was said at a given point later

## Who It's For

Xournal++ is aimed at people who annotate or take notes with a pen or stylus, particularly on a tablet or 2-in-1 device, rather than typing. It's a weaker fit for someone who just wants to quickly view or type-annotate a PDF without pen input, since its interface and feature set center on freehand writing and drawing rather than a typing-first workflow.
