---
layout: software
title: "Rocket.Chat"
slug: rocket-chat
tagline: "Open source team chat with an omnichannel customer service layer"
type: open-source
license: "Community Edition: MIT · Enterprise Edition: proprietary commercial license"
website: https://www.rocket.chat
platforms: [Windows, macOS, Linux, Android, iOS]
category: communication
logo: /assets/images/software/rocket-chat.svg
alternative_to:
  - slack
  - microsoft-teams
description: "Rocket.Chat is a self-hosted, open source team chat and customer service platform, offering an MIT-licensed Community Edition alongside a paid Enterprise Edition with omnichannel support."
last_modified_at: 2026-08-01
---

## Overview

Rocket.Chat started in 2015 in Porto Alegre, Brazil, as a side project by four developers — Gabriel Engel, Rodrigo Nascimento, Marcelo Schmidt, and Diego Sampaio — who wanted a self-hostable, extensible alternative to hosted chat tools. It grew from a community-driven GitHub project into a company (Rocket.Chat Technologies Corp.) that today serves both team-communication customers and, distinctively, customer-service organizations, with reported use across governments, financial institutions, and large enterprises seeking data-sovereign messaging.

Like Mattermost, Rocket.Chat runs an open-core model rather than a single license: **Community Edition** is MIT-licensed and includes the full core chat server, mobile and desktop apps, and a large library of community-built integrations. **Enterprise Edition** shares the same codebase (the two were merged into a single repository so Enterprise features simply unlock with a license key) but is governed by Rocket.Chat's own proprietary Enterprise Edition license, which gates features like auditing, advanced LDAP/SSO, and, most notably, its Omnichannel suite. Built on Node.js and MongoDB, Rocket.Chat's architecture emphasizes extensibility — a marketplace of apps and a scripting engine let admins add bots, integrations, and custom workflows without forking the codebase.

Where Rocket.Chat differentiates most clearly from Mattermost and Element is its Omnichannel product: a unified inbox that lets support and sales teams handle live chat, WhatsApp, Facebook Messenger, SMS, and Telegram conversations from a single Rocket.Chat interface, alongside their regular internal team channels. That makes it as much a customer-facing contact-center tool as an internal Slack alternative, a positioning neither Mattermost (developer/enterprise-internal focus) nor Element (privacy/federation focus) shares.

## Key Features

- **Omnichannel inbox** — Unifies live chat, WhatsApp, Facebook Messenger, SMS, and Telegram conversations for customer-facing support teams (primarily Enterprise Edition)
- **Team channels and DMs** — Standard public/private channels, threads, and direct messages for internal communication
- **App marketplace and scripting engine** — Install community apps or write custom server-side scripts without forking the codebase
- **Federation via Matrix** — Optional Matrix protocol bridging to federate with other Matrix-based servers, including Element
- **Video conferencing** — Built-in video calls (via Jitsi integration or native WebRTC) alongside chat
- **Self-hosted or cloud** — Deployable on-premises, in a private cloud, or via Rocket.Chat's own hosted cloud offering
- **Compliance and audit tools** — Message auditing, retention policies, and moderation console (Enterprise Edition)
- **Extensive REST and realtime API** — Used heavily for building custom bots and integrations

## Use Cases

- **Customer support and sales teams** — Centralizing WhatsApp, live chat, and social messaging into one omnichannel inbox
- **Regulated organizations** — Governments and financial institutions needing self-hosted, auditable team chat
- **Teams wanting Matrix interoperability** — Organizations that want Slack-style UX but with an option to federate via Matrix
- **Developers building custom chat workflows** — Teams that need a scriptable, extensible chat backend rather than a closed SaaS

## Who It's For

Rocket.Chat is for organizations that need both internal team chat and customer-facing messaging in one platform, particularly businesses running support or sales operations across WhatsApp, social messengers, and live chat. It's a strong fit for self-hosters who want MIT-licensed core chat for free and are willing to pay for Enterprise Edition if they need Omnichannel, advanced auditing, or SSO. Teams that only need internal chat with no customer-service angle may find Mattermost's DevOps-oriented tooling (Playbooks, Focalboard) or Element's privacy-first federation a closer match to their needs.
