---
layout: software
title: "goose"
slug: goose
tagline: "Open source, general-purpose AI agent with a desktop app and CLI"
type: open-source
license: Apache-2.0
website: https://goose-docs.ai
developer: "Agentic AI Foundation (originally Block)"
repository: https://github.com/aaif-goose/goose
latest_version: "1.57.0"
version_checked_at: 2026-11-04
platforms: [Linux, Windows, macOS]
category: development
logo: /assets/images/software/goose.svg
alternative_to:
  - claude-code
description: "goose is a free, Apache-2.0 AI agent built at Block and now part of the Linux Foundation's Agentic AI Foundation, with a desktop app, CLI, and MCP extensions."
last_modified_at: 2026-09-25
faq:
  - question: "Is goose only for coding?"
    answer: "No. goose started as a software engineering agent, but it is a general-purpose agent that can also be used for research, writing, automation, and data analysis. Its capabilities depend on which extensions (MCP servers) are enabled."
  - question: "Who maintains goose?"
    answer: "goose was created at Block and introduced in January 2025. In December 2025, Block contributed it as a founding project of the Linux Foundation's Agentic AI Foundation (AAIF), alongside the Model Context Protocol and AGENTS.md, and it is now developed under that foundation's governance."
  - question: "Does goose work with local models?"
    answer: "Yes. goose supports Ollama for local models alongside hosted providers such as Anthropic, OpenAI, Google, OpenRouter, Azure, and Amazon Bedrock. Tool-calling quality varies by model, so smaller local models may handle complex tasks less reliably than hosted frontier models."
---

## Overview

goose is an open source AI agent that runs on the user's own machine and carries out tasks by calling tools: reading and editing files, running shell commands, and interacting with external services. It was developed at Block (the company behind Square and Cash App), introduced publicly in January 2025 under the name "codename goose", and released under the Apache-2.0 license. In December 2025, Block contributed goose to the newly formed Agentic AI Foundation (AAIF) at the Linux Foundation as one of its founding projects, together with Anthropic's Model Context Protocol (MCP) and OpenAI's AGENTS.md. The repository now lives under the `aaif-goose` organization on GitHub.

goose is written in Rust and ships in three forms: a desktop app for macOS, Windows, and Linux; a CLI for terminal workflows; and an API for embedding the agent in other software. The desktop app and CLI share their core configuration, so providers and extensions set up in one are available in the other.

Rather than building every capability into the agent itself, goose is extended through MCP. Each extension is an MCP server that gives the agent a set of tools, such as a developer toolkit for files and shells, browser automation, or connectors to issue trackers and other services, and the project lists more than 70 available extensions. goose works with 15+ model providers, including Anthropic, OpenAI, Google, Ollama, OpenRouter, Azure, and Amazon Bedrock, and can also use existing Claude, ChatGPT, or Gemini subscriptions through the Agent Client Protocol (ACP).

## Key Features

- **Desktop app and CLI** — A graphical app for macOS, Windows, and Linux (DEB, RPM, Flatpak) and a full command-line interface
- **MCP extensions** — Add tools and integrations by connecting MCP servers, with 70+ extensions listed by the project
- **15+ model providers** — Hosted providers plus local models through Ollama
- **Existing subscriptions** — Use Claude, ChatGPT, or Gemini subscriptions through ACP instead of API keys
- **Recipes** — Package prompts, extensions, and settings into shareable, repeatable workflows
- **Custom distributions** — Build a preconfigured goose with chosen providers, extensions, and branding for a team or organization
- **Embeddable API** — Run the agent from other applications
- **Open governance** — Developed under the Linux Foundation's Agentic AI Foundation

## Use Cases

- **Software engineering tasks** — Implementing features, fixing bugs, writing tests, and running migrations across a codebase
- **Workflow automation** — Repeating multi-step tasks with recipes that capture the same prompts and tools each time
- **Research and data analysis** — Gathering information and working with files and data through extensions
- **Organization-wide agent rollout** — Distributing a custom goose build with approved providers and extensions preconfigured

## Who It's For

goose fits developers and teams who want a local, model-agnostic agent that isn't limited to code editing, and who value vendor-neutral governance under the Linux Foundation. Its MCP-based design makes it straightforward to extend with in-house tools. Developers who only want an in-editor coding assistant may find an IDE-integrated tool simpler, and those who prefer a terminal-only coding agent may find a dedicated coding agent more focused.
