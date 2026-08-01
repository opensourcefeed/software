---
layout: software
title: "Penpot"
slug: penpot
tagline: "Open source design and prototyping platform"
type: open-source
license: MPL-2.0
website: https://penpot.app
platforms: [Linux, Windows, macOS]
category: design
logo: /assets/images/software/penpot.svg
alternative_to:
  - figma
  - sketch
  - adobe-xd
description: "Penpot is a free, open source, browser-based design and prototyping platform built on open web standards, offering a self-hostable alternative to Figma, Sketch, and Adobe XD."
last_modified_at: 2026-07-26
---

## Overview

Penpot is a free and open source design and prototyping platform created by Kaleidos, a software development company based in Madrid, Spain. The project was unveiled at FOSDEM in February 2021 and grew out of Kaleidos' own need for a design and prototyping tool that fit its open source-focused workflow. Penpot is distributed under the Mozilla Public License 2.0 (MPL-2.0) and stores designs using open web standards — SVG, CSS, and HTML — rather than a proprietary file format, which means design files remain human-readable and inspectable outside the application itself.

Penpot runs entirely in the browser and can also be self-hosted on a company's own infrastructure, an option many teams choose for data control or compliance reasons. In September 2022, shortly after Adobe announced its acquisition of Figma, Kaleidos raised $8 million in funding to continue developing Penpot as an open source alternative. Since then, the project has added features such as native design tokens, CSS Grid and Flexbox layout support for responsive design, a plugin system with an open API, and a "Penpot Exporter" plugin (available in the Figma community) that lets designers export Figma projects into a Penpot-compatible format for migration.

## Key Features

- **Browser-based** — Runs in any modern web browser with no local installation required
- **Self-hostable** — Can be deployed on-premises or on private infrastructure using the official Docker images
- **Open file format** — Designs are stored as SVG, CSS, and HTML rather than a proprietary binary format
- **Real-time collaboration** — Multiple users can view and edit the same file simultaneously
- **Design systems** — Native design tokens and shared component libraries for consistent, scalable design
- **Responsive layout tools** — CSS Grid and Flexbox-based layout for building adaptive interfaces
- **Inspect mode** — Generates SVG, CSS, and HTML code directly from designs for handoff to developers
- **Figma migration path** — A companion Figma plugin ("Penpot Exporter") converts Figma projects into a Penpot-importable format
- **Plugin system and open API** — Extensible through community and custom plugins

## Use Cases

- **UI/UX design** — Wireframing, prototyping, and interactive mockups
- **Design systems** — Building and maintaining shared component libraries and design tokens across teams
- **Design-developer handoff** — Generating inspectable SVG/CSS/HTML code for implementation
- **Team collaboration** — Real-time, multi-user editing for distributed design teams
- **Regulated or privacy-conscious organizations** — Self-hosting Penpot to keep design data on internal infrastructure

## Who It's For

Penpot is suited to UI/UX designers, product teams, and organizations that want a collaborative design tool without a subscription requirement or vendor lock-in. Its self-hosting option and open file format make it particularly attractive to teams in regulated industries, public sector organizations, and open source projects that need control over where their design data lives, as well as anyone migrating away from Figma.
