---
layout: software
title: "Claude Code"
slug: claude-code
tagline: "Agentic coding tool that lives in your terminal"
type: proprietary
license: Proprietary
website: https://code.claude.com/docs/en/overview
platforms: [Linux, Windows, macOS]
category: development
logo: /assets/images/software/claude-code.png
alternative_to: []
has_alternatives: true
description: "Claude Code is Anthropic's agentic coding tool. It runs in your terminal, IDE, or browser, reads your codebase, edits files, runs commands, and manages git."
last_modified_at: 2026-07-26
---

## Overview

Claude Code is a proprietary agentic coding tool developed by Anthropic, the company behind the Claude AI models. It launched as a terminal-based CLI and has since expanded to additional surfaces: extensions for VS Code and JetBrains IDEs, a standalone desktop app, and a browser-based version at claude.ai/code. All surfaces share the same underlying engine, so configuration files, memory, and MCP server connections carry over between them. Unlike code assistants that only provide inline suggestions, Claude Code reads a project's files, runs shell commands, and edits across multiple files in a single session.

Access requires a paid Claude plan (Pro, Max, Team, or Enterprise) or an Anthropic Console account billed through the API; the free Claude.ai plan does not include Claude Code access. It can also be used through third-party model providers, including Amazon Bedrock, Google Cloud, and Microsoft Foundry. Claude Code supports extensibility through the Model Context Protocol (MCP), letting it connect to external tools and data sources such as issue trackers or document stores, and through project-level `CLAUDE.md` files that store persistent instructions read at the start of each session.

## Key Features

- **Terminal-native** — Runs directly in your terminal with full access to your shell environment and codebase
- **Codebase understanding** — Reads and indexes your entire project to provide context-aware assistance
- **Autonomous task execution** — Performs routine coding tasks, file operations, and shell commands on your behalf
- **Git workflow support** — Creates commits, manages branches, and handles pull request workflows
- **Complex code explanations** — Explains existing code, architecture patterns, and debugging issues
- **Multi-file editing** — Makes coordinated changes across multiple files in your project
- **Natural language interface** — Interact entirely through natural language, no memorized commands needed

## Use Cases

- **Rapid prototyping** — Build proof-of-concepts and MVPs quickly with natural language instructions
- **Code refactoring** — Automate large-scale refactors across multiple files
- **Bug fixing** — Describe the issue and let Claude Code diagnose and fix it
- **Onboarding** — New team members can ask questions about the codebase directly
- **Documentation** — Generate and update code documentation automatically
- **DevOps tasks** — Automate CI/CD configuration, Docker setups, and infrastructure-as-code

## Who It's For

Claude Code is designed for professional developers and teams who want to accelerate their development workflow. It is particularly suited for full-stack engineers, DevOps practitioners, and teams working on large, complex codebases. Requires a paid Claude plan (Pro, Max, Team, or Enterprise) or an Anthropic Console/API account; the free Claude.ai plan does not include access. Available natively for macOS, Linux, and Windows, as well as via WSL on Windows.