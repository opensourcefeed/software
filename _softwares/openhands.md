---
layout: software
title: "OpenHands"
slug: openhands
tagline: "AI-driven autonomous development assistant"
type: open-source
license: MIT
website: https://openhands.dev
platforms: [Linux, Windows, macOS]
category: development
logo: /assets/images/software/openhands.png
alternative_to:
  - claude-code
description: "OpenHands is an open source AI coding agent (formerly OpenDevin) that writes code and runs sandboxed commands. Self-hostable via Docker with a browser-based UI."
last_modified_at: 2026-07-26
---

## Overview

OpenHands began in early 2024 as OpenDevin, a community project created in response to Cognition's closed-source Devin agent. Later that year, core contributors Robert Brennan, Xingyao Wang, and Graham Neubig (a Carnegie Mellon professor) founded All Hands AI to continue the work, and the project was renamed OpenHands. It remains open source under the MIT license (a separate commercial license applies only to the `enterprise/` directory in the repository) and is developed on GitHub under the All-Hands-AI organization.

Technically, OpenHands is built around a Python SDK and an agent server that can run its own CodeActAgent or delegate to other coding agents such as Claude Code, Codex, and Gemini through the Agent-Client Protocol. Agents execute inside a Docker sandbox scoped to a project directory, giving isolation from the host machine while still allowing shell commands, file edits, and web access for tasks like reading documentation. The project ships a browser-based interface (referred to in current docs as "Agent Canvas") that can be started locally with a single command, self-hosted on a VM, or connected to the hosted OpenHands Cloud offering.

## Key Features

- **Autonomous task execution** — Completes multi-step development tasks without step-by-step supervision
- **Sandboxed environment** — Executes code and commands in an isolated Docker container for safety
- **Web browsing** — Searches documentation, reads API references, and gathers context from the web
- **Code editing** — Writes and edits code across multiple files with full project context
- **Shell access** — Runs terminal commands, installs packages, and manages dependencies
- **Browser-based UI** — Interactive chat interface accessible from any device
- **Self-hostable** — Deploy on your own servers for data privacy and customization
- **Microagents** — Repository-specific instructions and custom skills that extend agent behavior for specialized workflows

## Use Cases

- **Full-stack development** — Build complete features from frontend to backend from a single prompt
- **Bug investigation** — Let OpenHands dig through code, reproduce issues, and propose fixes
- **Code generation** — Generate boilerplate, scaffolding, and implementation code automatically
- **DevOps automation** — Automate setup, configuration, and deployment tasks
- **Learning and exploration** — Explore unfamiliar repositories and understand codebases interactively

## Who It's For

OpenHands is for developers and teams who want AI assistance that can work autonomously on complex development tasks. It is particularly suited for teams that value data privacy and self-hosting, full-stack developers working across multiple technologies, and organizations looking to automate routine development workflows without relying on proprietary cloud services.