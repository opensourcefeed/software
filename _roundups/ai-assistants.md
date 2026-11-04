---
layout: roundup
title: "Best Open Source AI Assistants"
seo_title: "Best Open Source AI Assistants You Can Run Locally"
slug: ai-assistants
category: ai-assistant
tagline: "Run language models privately on your own computer or server"
description: "The best open source AI assistants and local LLM tools for Linux, Windows, and macOS: Jan, Ollama, LibreChat, AnythingLLM, and llama.cpp."
verdict: "[Jan](/software/jan/) is the easiest open source AI assistant to run locally: a desktop chat app with no account and no command line. [Ollama](/software/ollama/) is the standard engine for local models, [LibreChat](/software/librechat/) serves teams, and [AnythingLLM](/software/anythingllm/) is best for chatting with your documents."
picks:
  - slug: jan
    best_for: "Most people: a desktop chat app for local models"
  - slug: ollama
    best_for: "Running local models for the command line and other apps"
  - slug: librechat
    best_for: "A self-hosted, multi-user chat service for teams"
  - slug: anythingllm
    best_for: "Chatting with your own documents"
  - slug: llama-cpp
    best_for: "Maximum control and performance for technical users"
methodology: "Picks are ordered by how well each tool serves most people who want a private AI assistant, weighing ease of setup, active maintenance, and platform coverage; every pick released an update within the last month and runs on Linux, Windows, and macOS. Open WebUI is a popular front end for Ollama, but it isn't included because its license adds a branding restriction that isn't OSI-approved; see the [Open WebUI page](/software/open-webui/). GPT4All isn't included because it hasn't published a release since February 2025."
faq:
  - question: "What is the best open source AI assistant?"
    answer: "For most people, [Jan](/software/jan/): it's a free desktop app that runs models locally with no setup beyond choosing a model. If you want a local model available to many apps, install [Ollama](/software/ollama/)."
  - question: "Can I run a local LLM on Linux?"
    answer: "Yes. Every pick here runs on Linux. Ollama installs with a single script and uses NVIDIA or AMD GPUs when available, Jan is available as a .deb or AppImage, and llama.cpp builds on almost any Linux system."
  - question: "What hardware do I need to run an AI model locally?"
    answer: "Small models of a few billion parameters run on a modern laptop with 8–16 GB of RAM. Larger models need a GPU with plenty of video memory, or an Apple Silicon Mac with a lot of unified memory. Quantized models, such as the GGUF files llama.cpp uses, cut memory needs considerably."
  - question: "Are local models as good as ChatGPT or Claude?"
    answer: "Not the largest ones. Open-weight models you can run locally handle writing, summarizing, and everyday questions well, but they generally trail the biggest cloud models on complex reasoning. Several apps here let you use both."
last_modified_at: 2026-11-04
---

Running an AI assistant on your own hardware has gone from a research project to something you can set up in minutes. Open-weight models from several labs, including Meta's Llama, Google's Gemma, Alibaba's Qwen, and Mistral, can be downloaded and run locally, and a set of mature open source tools handles the hard parts: fetching models, using your GPU, and giving you a chat interface or an API. The result is an assistant whose prompts and documents never leave your machine, with no subscription and no usage limits.

The tools below fit together more than they compete. [llama.cpp](/software/llama-cpp/) is the inference engine underneath much of the ecosystem, and [Ollama](/software/ollama/) wraps local models in a simple command line and API. [Jan](/software/jan/) and [AnythingLLM](/software/anythingllm/) are complete apps for chatting and for working with your documents, and [LibreChat](/software/librechat/) turns a server into a shared, multi-user chat service. How capable a local assistant feels depends mostly on your hardware and the size of the model you can run.
