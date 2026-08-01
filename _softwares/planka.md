---
layout: software
title: "Planka"
slug: planka
tagline: "Source-available kanban board with a Trello-like interface"
type: source-available
license: "PLANKA Community License v1.1 (source-available, not OSI-approved); paid Pro/Enterprise tiers add features"
website: https://planka.app
platforms: [Linux, Windows, macOS, Docker]
category: project-management
logo: /assets/images/software/planka.png
alternative_to:
  - trello
description: "Planka is a self-hostable kanban board with a modern interface closely modeled on Trello's board/list/card layout. Its Community edition is free and source-available under a non-OSI license, with paid Pro and Enterprise tiers for additional features."
last_modified_at: 2026-08-01
---

## Overview

Planka is a kanban board application built with a React frontend and Node.js backend, aiming for a close visual and interaction match to Trello's board, list, and card model — closer in look and feel than Wekan's older Meteor-based interface, which was built more for functional parity than pixel-level similarity. Planka's licensing history matters and should be stated precisely: the project began under the permissive MIT license, moved to AGPL-3.0 in 2023, and then, starting with its 2.0 release candidates, switched again to a proprietary "PLANKA Community License" (a Fair Use-style license) maintained by PLANKA Software GmbH. This newer license is **not** OSI-approved and does not meet the standard definition of open source or free software — it permits free self-hosting for internal, personal, or non-commercial use, but explicitly prohibits reselling access, sharing accounts for business purposes, or operating Planka as a hosted service for third-party commercial gain without a separate commercial license.

In practice, Planka today is best described as source-available rather than open source: the Community edition's code is publicly viewable and self-hostable at no cost via Docker, which is why it's still commonly recommended as a free, self-managed Trello-style board, but organizations that want to resell hosted Planka instances, need custom branding, or want features like calendar/map views and recurring cards must purchase a Pro or Enterprise license. This is a meaningful trade-off compared to Wekan, which remains fully MIT-licensed with no paid tier gating any feature.

## Key Features

- **Trello-style boards** — Lists, cards, labels, and due dates in a layout and interaction model closely mirroring Trello's own UI
- **Modern React interface** — A newer, actively styled frontend compared to Wekan's older Meteor-based UI
- **Free self-hosted Community edition** — Deployable via Docker at no cost for internal or personal use under the PLANKA Community License
- **Background customization** — Board backgrounds and card covers for visual organization
- **Card details and checklists** — Due dates, labels, attachments, and checklists per card
- **User roles and permissions** — Board-level membership and role management
- **Paid Pro/Enterprise tiers** — Custom branding, calendar and map views, recurring cards, and commercial hosting rights available as paid add-ons

## Use Cases

- **Small teams wanting a Trello look-alike** — Self-hosting a visually close match to Trello's interface without a subscription
- **Internal, non-commercial kanban boards** — Personal projects or internal company use covered by the free Community license
- **Trello migrations on a budget** — Teams that want Trello's UX but not its per-seat SaaS pricing
- **Organizations needing commercial hosting rights** — Businesses that want to resell or host Planka for third parties, which requires a paid Pro/Enterprise license

## Who It's For

Planka suits individuals and internal teams who want a modern, Trello-like kanban board they can self-host for free, and who fall within the PLANKA Community License's permitted personal/internal use — not businesses looking to host it commercially for others without a paid license. It's worth choosing over Wekan specifically for its closer visual resemblance to Trello and newer codebase, but teams that need a fully open source, unrestricted license with no commercial-use caveats should lean toward Wekan instead, since Planka's Community edition is source-available rather than OSI-approved open source.
