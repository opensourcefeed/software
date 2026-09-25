---
layout: software
title: "AppFlowy"
slug: appflowy
tagline: "Open source workspace for documents, wikis, and databases"
type: open-source
license: AGPL-3.0
website: https://appflowy.com
platforms: [Linux, Windows, macOS, Android, iOS, Web]
category: note-taking
logo: /assets/images/software/appflowy.svg
alternative_to:
  - notion
description: "AppFlowy is a free, AGPL-3.0-licensed workspace app for documents, wikis, and databases with grid, board, and calendar views, built in Flutter and Rust and usable offline or self-hosted."
last_modified_at: 2026-09-25
faq:
  - question: "Is AppFlowy free?"
    answer: "Yes. The AppFlowy apps are free and open source under AGPL-3.0, and can be used locally without an account. AppFlowy Cloud, the hosted sync service, has free and paid plans, and the official self-hosted server's free plan allows one member plus up to three guests per instance, with a paid license needed for more members."
  - question: "Can AppFlowy be used offline?"
    answer: "Yes. AppFlowy stores workspaces on the device, so documents and databases can be created and edited without a network connection. Syncing between devices or collaborating with other people requires AppFlowy Cloud or a self-hosted AppFlowy Cloud server."
  - question: "Can AppFlowy be self-hosted?"
    answer: "Yes. The AppFlowy Cloud server is also AGPL-3.0 and can be deployed with Docker on your own infrastructure. The official build enforces a free-plan limit of one member and three guests; adding more members requires purchasing a self-hosted license from AppFlowy."
---

## Overview

AppFlowy is an open source workspace application for writing documents, organizing wikis, and tracking work in databases, developed by the AppFlowy team and first published on GitHub in June 2021. It is released under the AGPL-3.0 license and is built with Flutter for the user interface and Rust for its core data layer, which lets a single codebase ship native apps for Windows, macOS, Linux, iOS, and Android, alongside a browser version.

The application is organized around pages that can be nested into a sidebar hierarchy, where each page is either a rich-text document or a database. Databases can be displayed as a grid (spreadsheet-style table), a board (Kanban columns), or a calendar, and the same data can be viewed in more than one layout. Documents support block-based editing with headings, to-do lists, toggles, code blocks, tables, embedded images, and slash commands for inserting content.

Data is stored locally by default, so AppFlowy works offline and without an account. Multi-device sync and real-time collaboration are provided by AppFlowy Cloud, which is available both as a hosted service and as an AGPL-3.0 server that organizations can deploy themselves with Docker.

## License and Pricing

Both the desktop and mobile apps and the AppFlowy Cloud server are licensed under AGPL-3.0. Using the apps locally costs nothing. The hosted AppFlowy Cloud service offers a free tier and paid plans with higher limits and AI features.

For self-hosting, the official AppFlowy Cloud build includes a free plan limited to one member and three guests per instance; teams that need more members must buy a self-hosted license with the required number of seats. This limit is enforced by the official build rather than stated in the AGPL license itself, so it is worth checking the current self-hosting terms before planning a team deployment.

## Key Features

- **Documents** — Block-based rich-text editor with headings, checklists, toggles, callouts, code blocks, tables, and slash commands
- **Databases with multiple views** — Grid, board (Kanban), and calendar views over the same data, with filters, sorting, and property types such as select, date, checkbox, and URL
- **Nested pages** — Organize documents and databases into a sidebar tree to build wikis and project spaces
- **Offline and local-first** — Workspaces are stored on the device and remain usable without a connection
- **Self-hostable sync** — Run AppFlowy Cloud on your own server for sync and collaboration under your own control
- **Publishing** — Share selected pages to the web as read-only sites
- **Templates** — Start from community and built-in templates for common workflows such as task tracking and meeting notes
- **Cross-platform apps** — Native apps for Windows, macOS, Linux (including Flatpak and Snap packages), iOS, and Android

## Use Cases

- **Personal knowledge base** — Notes, journals, and reference pages stored locally and usable offline
- **Team wikis** — Shared documentation organized into nested pages, synced through AppFlowy Cloud
- **Task and project tracking** — Kanban boards and calendar views for managing work items
- **Privacy-sensitive workspaces** — Organizations that want document and project data on their own infrastructure

## Who It's For

AppFlowy suits individuals and small teams who want a block-based workspace combining documents and databases, with the option to keep data on their own devices or servers. Its database views and nested page structure make it one of the closer open source matches to a Notion-style workflow. Larger teams planning to self-host should factor in the member limit of the official free self-hosted plan and compare it against the cost of AppFlowy's paid seats or the hosted service.
