---
layout: software
title: "Ollama"
seo_title: "Ollama: Run LLMs Locally on Linux, Windows & macOS"
slug: ollama
tagline: "Run open-weight language models on your own computer"
type: open-source
license: MIT
website: https://ollama.com
developer: "Ollama"
repository: https://github.com/ollama/ollama
latest_version: "0.40.14"
version_tag: '^v(\d+\.\d+\.\d+)$'
version_checked_at: 2026-11-04
platforms: [Linux, Windows, macOS, Docker]
category: ai-assistant
self_hostable: true
logo: /assets/images/software/ollama.svg
alternative_to:
  - claude
description: "Ollama is a free, MIT-licensed tool for downloading and running open-weight LLMs locally, with a command line and an API other apps connect to."
last_modified_at: 2026-11-04
faq:
  - question: "How do I run Ollama on Linux?"
    answer: "Install it with the script or manual instructions on ollama.com, then run a model with a command such as `ollama run` followed by the model name. Ollama starts a local API on port 11434 that other apps can use. An official Docker image is also available."
  - question: "Does Ollama work offline?"
    answer: "Yes. You need an internet connection to download a model the first time; after that, models run entirely on your own machine."
  - question: "Does Ollama have a chat interface?"
    answer: "Ollama itself is mainly a command-line tool and API. For a full chat interface, pair it with a front end such as [Open WebUI](/software/open-webui/), [LibreChat](/software/librechat/), or [AnythingLLM](/software/anythingllm/)."
---

## Overview

Ollama is a free and open source tool for running large language models on your own hardware. It handles the parts that make local AI awkward: downloading model files, picking settings that fit your hardware, using your GPU when one is available, and keeping models loaded in memory. You pull a model from Ollama's library, which includes open-weight families such as Llama, Gemma, Qwen, Mistral, and DeepSeek, and run it with one command.

Ollama runs as a background service with a REST API on `localhost:11434`. That API is why it has become a common building block: chat front ends like [Open WebUI](/software/open-webui/), [LibreChat](/software/librechat/), and [AnythingLLM](/software/anythingllm/), coding agents such as [OpenCode](/software/opencode/) and [Aider](/software/aider/), and your own scripts can all use the same local models through it. Official Python and JavaScript libraries make that integration straightforward.

The project is released under the MIT license and developed in the open on GitHub. It runs on Linux, Windows, and macOS, and an official `ollama/ollama` Docker image makes it easy to run on a home server.

## Key Features

- **One-command models** — Download and run a model with `ollama run`, with sensible defaults for your hardware
- **Local REST API** — A documented API on port 11434 for chat, text generation, embeddings, and model management
- **Model library** — Ready-to-run builds of popular open-weight models in several sizes
- **Customization with Modelfiles** — Package a model with your own system prompt and parameters under a new name
- **GPU acceleration** — Uses supported NVIDIA, AMD, and Apple Silicon GPUs, and falls back to the CPU
- **Python and JavaScript libraries** — Official client libraries for building on top of local models

## Use Cases

- **Private chat and drafting** — Keep prompts and documents on your own machine instead of a cloud service
- **Back end for other apps** — Serve local models to chat interfaces, note apps, and coding agents
- **Development and testing** — Prototype AI features against a free, local API before choosing a hosted provider
- **Home servers** — Run models on a machine with a GPU and use them from other devices on your network

## Who It's For

Ollama is for anyone who wants to run AI models locally without managing model files by hand, from Linux users trying a first local LLM to developers who need a stable local API. It's free with no account required. Model quality and speed depend on your hardware: small models run on an ordinary laptop, while larger ones need a capable GPU or a lot of memory.
