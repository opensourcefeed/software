---
layout: software
title: "Taiga"
slug: taiga
tagline: "Open source project management for agile teams"
type: open-source
license: AGPL-3.0
website: https://www.taiga.io
platforms: [Linux, Windows, macOS via web, Docker]
category: project-management
logo: /assets/images/software/taiga.png
alternative_to:
  - asana
  - jira
description: "Taiga is a free, open source, Scrum- and Kanban-focused project management tool built for agile teams, offered as a lighter-weight, self-hostable alternative to Asana and Jira."
last_modified_at: 2026-08-01
---

## Overview

Taiga was created by Kaleidos, a software consultancy based in Madrid, Spain, and launched in 2014 with a specific focus on agile software teams rather than general-purpose project management. The client and backend are published on GitHub under the AGPL-3.0 license, and the full stack can be self-hosted at zero licensing cost via Docker, with no cap on the number of projects or users in the self-hosted deployment. The project has grown to well over a million registered users since launch, and Kaleidos continues to fund core development while also operating Taiga's own hosted cloud service (based in Madrid, GDPR-compliant, with data processing agreements available) for teams that would rather not run the infrastructure themselves.

Taiga's differentiation from OpenProject, the other self-hostable option already covered on this site, comes down to scope and interface philosophy. OpenProject aims at Jira-level configurability — custom work package types, deep workflow customization, Gantt-driven portfolio planning across many project types — and its UI reflects that breadth. Taiga instead commits specifically to Scrum and Kanban: backlogs, sprints, story points, burndown charts, and kanban boards are first-class, built around a clean, opinionated interface that Kaleidos designed to be usable by non-technical stakeholders without a long onboarding process. Taiga is fully open source with no separate paid "Enterprise edition" gating core functionality the way OpenProject's does — the difference between free and paid is self-hosting your own instance versus paying for Taiga's hosted cloud plans, not a locked feature tier.

## Key Features

- **Scrum boards** — Backlogs, sprints, story points, and burndown/burnup charts built specifically for Scrum workflows
- **Kanban boards** — Swimlane-based kanban boards as a first-class alternative view, not a bolted-on extra
- **Issue tracking** — Bug and issue tracking with custom statuses, tags, and severities, linkable to user stories and tasks
- **Epics** — Group related user stories across sprints and projects for higher-level roadmap tracking
- **Self-hosted via Docker** — Official Docker Compose setup for running the full stack on your own infrastructure at no licensing cost
- **Wiki** — Per-project wiki pages for specifications and team documentation
- **Video call integration** — Built-in support for Jitsi-based video calls attached to projects
- **REST API and webhooks** — Programmatic access and integration hooks for connecting external tools

## Use Cases

- **Agile software teams** — Sprint planning, backlog grooming, and burndown tracking as a lighter Jira alternative
- **Small to mid-size product teams** — Kanban and Scrum boards without the configuration overhead of a heavier enterprise PM tool
- **Startups and consultancies** — Clean, presentable boards suitable for sharing progress with non-technical stakeholders or clients
- **Cost-sensitive teams** — Self-hosting to avoid Asana's or Jira's per-seat subscription costs as headcount grows

## Who It's For

Taiga fits teams that specifically run Scrum or Kanban and want an interface built around those workflows rather than a general-purpose project tracker with agile features layered on top. It's a better starting point than OpenProject for smaller or leaner teams that don't need Gantt-based portfolio planning or deep work-package customization, trading some of OpenProject's configurability for a cleaner, faster-to-learn board experience. Teams can self-host the fully open source AGPL-3.0 stack for free, or pay for Taiga's own hosted cloud plans if they'd rather not manage the infrastructure — either way, no core feature is held back behind a separate enterprise license.
