---
layout: software
title: "Cursor"
slug: cursor
tagline: "Proprietary AI-first code editor forked from VS Code"
type: proprietary
license: Proprietary
website: https://cursor.com
platforms: [Windows, macOS, Linux]
category: development
logo: /assets/images/software/cursor.svg
alternative_to: []
has_alternatives: true
description: "Cursor is a proprietary AI-first code editor forked from VS Code, built by Anysphere, offering agentic multi-file editing tied to its own closed source app and subscription."
last_modified_at: 2026-08-01
---

## Overview

Cursor is an AI-focused code editor built by Anysphere, a company founded in 2022 by Michael Truell, Sualeh Asif, Arvid Lunnemark, and Aman Sanger. Rather than building a plugin on top of an existing editor, Anysphere forked VS Code's open source codebase and rebuilt the editing experience around AI from the ground up, letting Cursor retain compatibility with most VS Code extensions and keybindings while adding deeply integrated AI features that a plugin architecture couldn't easily support. It grew quickly among professional developers and by 2025 had become one of the most widely used AI coding tools, with Anysphere reaching a multi-billion dollar valuation. On June 16, 2026, SpaceX announced an agreement to acquire Anysphere for $60 billion in an all-stock deal — the largest venture-backed startup acquisition on record — with the deal expected to close in Q3 2026 pending regulatory approval. The acquisition follows SpaceX's earlier February 2026 merger with Elon Musk's xAI, positioning Cursor as part of a broader push into enterprise AI rather than an independent company.

While Cursor's editor shell is derived from Microsoft's open source VS Code (itself MIT-licensed), Cursor's own AI features, backend, and application layer are closed source and proprietary. It supports multiple underlying models, including Anthropic Claude, OpenAI's models, and its own custom-trained "Composer" models, selectable per task. In June 2026, Anysphere also acquired the team behind the open source Continue coding agent, discontinuing that project, which brought some of its talent in-house. Cursor is distributed on a freemium basis, with usage-based or subscription pricing unlocking higher usage limits and access to more capable models.

## Key Features

- **Agentic multi-file editing** — Plans and executes coding tasks across multiple files with an approval-driven diff workflow
- **Tab autocomplete** — Multi-line, whole-edit predictive completions that go beyond single-line suggestions
- **Multi-model support** — Choice between Claude, OpenAI models, and Cursor's own Composer models per request
- **Codebase-aware chat** — Chat grounded in the open project's files and structure
- **VS Code compatibility** — Runs most existing VS Code extensions and keybinding schemes
- **Background agents** — Long-running agent tasks that execute asynchronously outside the active editor session

## Use Cases

- **AI-first development** — Developers who want AI woven into every part of the editor rather than added as an extension
- **Agentic refactoring** — Large, multi-file changes planned and executed with human review at each step
- **Rapid prototyping** — Fast iteration from natural-language prompts to working code
- **Teams migrating from VS Code** — Familiar editor UX with AI features layered throughout

## Who It's For

Cursor is aimed at developers who want an editor built around AI assistance from the ground up rather than bolted on as a plugin. It suits teams and individuals comfortable with a closed source, subscription-priced tool in exchange for deeper AI integration than extension-based competitors typically offer.
