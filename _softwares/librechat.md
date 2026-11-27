---
layout: software
title: "LibreChat"
seo_title: "LibreChat: Self-Hosted, Multi-User AI Chat (Open Source)"
slug: librechat
tagline: "Self-hosted AI chat app for teams, with many model providers"
type: open-source
license: MIT
website: https://www.librechat.ai
developer: "LibreChat (Danny Avila and contributors)"
repository: https://github.com/LibreChat-AI/LibreChat
latest_version: "0.8.9"
version_tag: '^v(\d+\.\d+\.\d+)$'
version_checked_at: 2026-11-27
platforms: [Web, Docker]
category: ai-assistant
self_hostable: true
logo: /assets/images/software/librechat.svg
alternative_to:
  - claude
description: "LibreChat is a free, MIT-licensed, self-hosted AI chat app with multi-user accounts, agents, and support for Claude, OpenAI, Google, and local models."
last_modified_at: 2026-11-04
faq:
  - question: "Can LibreChat use local models?"
    answer: "Yes. LibreChat works with any OpenAI-compatible API through custom endpoints, so it can use models served locally by [Ollama](/software/ollama/) or [llama.cpp](/software/llama-cpp/) alongside cloud providers."
  - question: "Is LibreChat free?"
    answer: "The software is free and open source under the MIT license. If you connect it to paid model providers, you pay those providers for API usage."
  - question: "How do I install LibreChat?"
    answer: "The usual route is Docker Compose on a Linux server or home lab machine; LibreChat's documentation covers configuration, authentication, and adding model endpoints."
---

## Overview

LibreChat is a free and open source AI chat application that you host yourself. It gives a team or household one familiar chat interface in the browser, with user accounts, while letting the administrator decide which models are available, from cloud providers to models running on your own hardware. The project was started by Danny Avila and is developed in the open on GitHub under the MIT license.

Its main strength is breadth. LibreChat supports Anthropic's Claude models, OpenAI and Azure OpenAI, Google and Vertex AI, and AWS Bedrock out of the box, and any OpenAI-compatible API through custom endpoints. That includes local servers such as [Ollama](/software/ollama/) and [llama.cpp](/software/llama-cpp/), so one deployment can offer both private local models and cloud models, with each provider's API keys held on your server instead of every user's device.

Beyond chat, LibreChat includes agents that can use tools, file search, and Model Context Protocol (MCP) servers, and agents can be shared with specific users and groups. It supports single sign-on through OpenID Connect, which matters for organizations, and it's typically deployed with Docker Compose.

## Key Features

- **Many providers in one interface** — Claude, OpenAI, Azure OpenAI, Google, Vertex AI, AWS Bedrock, and custom endpoints
- **Local models** — Connect Ollama, llama.cpp, and other OpenAI-compatible local servers
- **Multi-user accounts** — Separate users and conversations, with OpenID Connect sign-in
- **Agents and tools** — Agents that use tools, file search, and MCP servers, shareable with users and groups
- **File uploads** — Attach documents to conversations and route them to the model or to search
- **Self-hosted** — Deploy with Docker on your own server and keep conversation data under your control

## Use Cases

- **Team AI chat** — Give a team one shared interface without per-seat chat subscriptions
- **Central API key management** — Keep provider keys on the server instead of on every user's machine
- **Mixing private and cloud models** — Route sensitive work to local models and other work to cloud providers
- **Home labs** — A family or personal AI chat front end for models running on a home server

## Who It's For

LibreChat is for teams, organizations, and home-lab users who want a self-hosted, multi-user AI chat service and are comfortable running a Docker deployment. The software is free; model costs depend on which providers you connect, and local models cost nothing beyond your hardware.
