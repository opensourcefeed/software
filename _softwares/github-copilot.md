---
layout: software
title: "GitHub Copilot"
slug: github-copilot
tagline: "Proprietary AI pair programmer from GitHub and Microsoft"
type: proprietary
license: Proprietary
website: https://github.com/features/copilot
platforms: [Linux, Windows, macOS]
category: development
logo: /assets/images/software/github-copilot.svg
alternative_to: []
has_alternatives: true
description: "GitHub Copilot is a proprietary AI coding assistant built into VS Code, JetBrains IDEs, and GitHub.com, offered as a subscription add-on locked to GitHub's platform and approved models."
last_modified_at: 2026-08-01
---

## Overview

GitHub Copilot launched in technical preview in 2021 and general availability in 2022, built by GitHub (owned by Microsoft) in partnership with OpenAI, as one of the first widely adopted AI coding assistants integrated directly into a code editor. It began as an inline autocomplete tool trained to suggest whole lines and functions as developers typed, then expanded into "Copilot Chat" for conversational Q&A, and later into an agentic mode capable of planning and executing multi-file changes, mirroring the direction taken by newer entrants like Claude Code and Cursor.

Copilot is closed source and available as a paid subscription (with a free, rate-limited tier), billed per user for individuals or per seat for GitHub Enterprise customers. It integrates as an extension in VS Code, Visual Studio, JetBrains IDEs, Neovim, and directly on GitHub.com for pull request summaries and code review suggestions. Since 2024, GitHub has expanded model choice within Copilot to include several models beyond OpenAI's, including Anthropic's Claude and Google's Gemini models, selectable per-request inside supported clients, though the product itself remains fully proprietary and tied to a GitHub account.

## Key Features

- **Inline autocomplete** — Context-aware code suggestions as you type, trained on public and licensed code
- **Copilot Chat** — Conversational assistant for explaining code, debugging, and answering questions in-editor
- **Agent mode** — Autonomous multi-file editing and task execution within supported IDEs
- **Multi-model selection** — Choice of underlying model (OpenAI, Anthropic Claude, Google Gemini) per request in supported clients
- **GitHub.com integration** — Pull request summaries, code review suggestions, and repository-aware chat on GitHub itself
- **Copilot Workspace** — Task-to-PR workflow that plans and drafts changes from a natural-language issue description

## Use Cases

- **In-editor autocomplete** — Faster boilerplate and routine code writing across supported IDEs
- **Code review assistance** — Automated pull request summaries and review suggestions on GitHub
- **Codebase Q&A** — Asking questions about unfamiliar code without leaving the editor
- **Agentic task execution** — Delegating multi-step coding tasks to run semi-autonomously within an IDE

## Who It's For

GitHub Copilot is aimed at developers and teams already working within the GitHub ecosystem who want AI assistance built into VS Code, JetBrains IDEs, or GitHub.com itself without configuring a separate tool. It requires an active paid subscription (or the free tier's limited usage) and a GitHub account, and does not support fully local or self-hosted model use.
