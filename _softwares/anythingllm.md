---
layout: software
title: "AnythingLLM"
seo_title: "AnythingLLM: Chat With Your Documents, Locally"
slug: anythingllm
tagline: "Private AI app for chatting with documents, with agents and local models"
type: open-source
license: MIT
website: https://anythingllm.com
developer: "Mintplex Labs"
repository: https://github.com/Mintplex-Labs/anything-llm
latest_version: "1.19.0"
version_tag: '^v(\d+\.\d+\.\d+)$'
version_checked_at: 2026-11-04
platforms: [Windows, macOS, Linux, Docker]
category: ai-assistant
self_hostable: true
logo: /assets/images/software/anythingllm.png
alternative_to:
  - claude
description: "AnythingLLM is a free, MIT-licensed AI app for chatting with your documents using local or cloud models, as a desktop app or a self-hosted server."
last_modified_at: 2026-11-04
faq:
  - question: "What is the difference between the desktop and Docker versions?"
    answer: "The desktop app is a single-user application for Windows, macOS, and Linux. The Docker version runs as a server and adds multi-user accounts with permissions and an embeddable chat widget for websites."
  - question: "Does AnythingLLM need an internet connection?"
    answer: "No. It runs locally by default and includes a built-in engine for local models; you only need a connection to download models or if you choose a cloud provider."
  - question: "Is AnythingLLM free?"
    answer: "Yes. AnythingLLM is free and open source under the MIT license."
---

## Overview

AnythingLLM is a free and open source AI application from Mintplex Labs, built around one common need: asking questions about your own documents. You drop files into a workspace, and AnythingLLM indexes them so a language model can answer with references to the source passages, a technique usually called retrieval-augmented generation (RAG).

It runs locally by default. A built-in engine can run open-weight models on your CPU or GPU, or you can connect it to a local server such as [Ollama](/software/ollama/) or to cloud providers such as OpenAI and Anthropic. AnythingLLM comes in two forms: a desktop app for Windows, macOS, and Linux, and a Docker version for servers. The Docker version adds multi-user support with permissions and an embeddable chat widget for websites.

Beyond document chat, AnythingLLM includes AI agents that can browse the web and use tools, a no-code agent builder, support for the Model Context Protocol (MCP), scheduled tasks that run prompts on a timetable, and a developer API. The project is MIT-licensed.

## Key Features

- **Chat with your documents** — Workspaces that index your files and answer with source citations
- **Local by default** — A built-in local model engine, plus support for Ollama and other runners
- **Many providers** — Works with popular open and closed model providers when you want them
- **Agents and MCP** — Agents that use tools, a no-code agent builder, and MCP compatibility
- **Scheduled tasks** — Run prompts and agent tasks on a recurring schedule
- **Desktop or server** — Single-user desktop app, or a Docker server with multi-user accounts and an embeddable widget

## Use Cases

- **Private document Q&A** — Search and summarize contracts, notes, manuals, or research papers locally
- **Team knowledge base** — A self-hosted assistant over shared documents, with per-user permissions
- **Website support chat** — Embed a chat widget backed by your own documentation (Docker version)
- **Automations** — Scheduled summaries, reports, and agent tasks

## Who It's For

AnythingLLM suits people and teams who want an AI assistant grounded in their own documents without sending those documents to a cloud service. The desktop app needs no setup beyond installing it; the Docker version is for teams that want a shared server. It's free under the MIT license.
