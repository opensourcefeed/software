---
layout: software
title: "Open WebUI"
seo_title: "Open WebUI: Self-Hosted AI Interface (License Explained)"
slug: open-webui
tagline: "Self-hosted web interface for local and cloud AI models"
type: source-available
license: Source-available
license_note: "Open WebUI License: BSD-3-Clause terms plus a clause that forbids removing Open WebUI branding in deployments with more than 50 users unless the copyright holder permits it. Not OSI-approved."
website: https://openwebui.com
developer: "Open WebUI Inc."
repository: https://github.com/open-webui/open-webui
latest_version: "0.13.0"
version_checked_at: 2026-11-04
platforms: [Web, Docker, Windows, macOS, Linux]
category: ai-assistant
self_hostable: true
logo: /assets/images/software/open-webui.png
alternative_to:
  - claude
description: "Open WebUI is a self-hosted web interface for AI models that works with Ollama and OpenAI-compatible APIs, under a source-available license."
last_modified_at: 2026-11-04
faq:
  - question: "Is Open WebUI open source?"
    answer: "Not by the OSI definition. Its code is public under the Open WebUI License, which uses BSD-3-Clause terms but adds a branding clause: deployments with more than 50 users may not remove Open WebUI branding without permission. For personal and small-team use, the practical difference is small."
  - question: "Does Open WebUI need Ollama?"
    answer: "No, but they're often used together. Open WebUI can connect to local models through [Ollama](/software/ollama/) or to any OpenAI-compatible API, including cloud providers and other local servers."
  - question: "Is there a fully open source alternative to Open WebUI?"
    answer: "Yes. [LibreChat](/software/librechat/) (MIT) is a self-hosted, multi-user chat interface, and [AnythingLLM](/software/anythingllm/) (MIT) focuses on chatting with your documents."
---

## Overview

Open WebUI is a self-hosted web interface for AI models, designed to run entirely offline if you want it to. It gives you a polished chat experience in the browser on top of models you run yourself, most often through [Ollama](/software/ollama/), or through any OpenAI-compatible API, including cloud providers. It's one of the most popular front ends for local AI, especially on home servers.

The usual installation is a single Docker container, which makes it a common addition to home-lab setups next to Ollama. The project also offers a native desktop app for macOS, Windows, and Linux. Around the core chat interface, Open WebUI adds user accounts and administration, document and knowledge features for asking questions about your own files, and an extensible system of tools and functions.

Licensing needs a precise note. Open WebUI's code is public, but since 2025 it has used its own Open WebUI License: BSD-3-Clause terms plus a clause that forbids removing or replacing the Open WebUI branding in deployments with more than 50 end users, unless you have the copyright holder's permission. Because of that restriction, the license isn't OSI-approved, so this directory lists Open WebUI as source-available rather than open source.

## Key Features

- **Chat interface for local models** — Works with Ollama and other OpenAI-compatible servers
- **Cloud providers too** — Connect OpenAI-compatible cloud APIs alongside local models
- **Offline operation** — Designed to run without internet access once models are in place
- **Users and administration** — Accounts and admin controls for shared deployments
- **Documents and knowledge** — Ask questions about uploaded files and collections
- **Easy deployment** — One Docker container, plus a native desktop app

## Use Cases

- **Home-lab AI** — A browser front end for models running on a home server
- **Small-team assistant** — Shared, self-hosted AI chat with user accounts
- **Private document chat** — Questions about your own files without a cloud service
- **Trying models side by side** — Switch between local and cloud models in one interface

## Who It's For

Open WebUI suits home-lab users and small teams who want a polished, self-hosted AI chat interface, usually alongside Ollama. It's free to use. Organizations planning large deployments, or anyone who needs an OSI-approved license, should review its branding clause or consider fully open source options such as [LibreChat](/software/librechat/).
