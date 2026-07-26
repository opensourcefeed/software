---
layout: software
title: "Docker Desktop"
slug: docker-desktop
tagline: "GUI application for building and running containers on the desktop"
type: proprietary
license: Proprietary
website: https://www.docker.com/products/docker-desktop
platforms: [Windows, macOS, Linux]
category: containerization
logo: /assets/images/software/docker-desktop.svg
alternative_to: []
has_alternatives: true
description: "Docker Desktop bundles the Docker Engine, CLI, and Compose with a GUI for building and managing containers on Windows, macOS, and Linux."
last_modified_at: 2026-07-26
---

## Overview

Docker originated at dotCloud, a platform-as-a-service company founded by Solomon Hykes, Kamel Founadi, and Sebastien Pahl during the Y Combinator Summer 2010 batch. Hykes led the internal project that became Docker, and it was introduced publicly at PyCon in Santa Clara in March 2013, where the underlying container engine was released as open source. dotCloud was renamed Docker Inc. in 2013 as the company shifted its focus entirely to the container tooling. The core container runtime code was later organized under the Moby Project, an open-source foundation established in 2017, and remains available under the Apache License 2.0.

Docker Desktop is a separate, proprietary application built on top of that open-source engine. It packages the Docker Engine, CLI, Docker Compose, and a graphical interface into a single installer for Windows, macOS, and Linux, along with a built-in Kubernetes environment. In August 2021, Docker Inc. changed the licensing terms for Docker Desktop: it remained free for personal use, education, non-commercial open source projects, and small businesses (fewer than 250 employees and less than $10 million in annual revenue), but businesses exceeding either threshold were required to purchase a paid Pro, Team, or Business subscription. This distinction is a frequent source of confusion — the Docker Engine, CLI, and Moby components that Docker Desktop wraps are open source, but the Docker Desktop application itself is proprietary software distributed under Docker's own end-user license agreement.

## Key Features

- **Graphical container management** — Dashboard for viewing, starting, stopping, and inspecting containers, images, and volumes without using the CLI
- **Bundled Docker Engine and CLI** — Ships the standard `docker` command-line tools alongside the GUI
- **Kubernetes toggle** — Built-in single-node Kubernetes cluster that can be enabled or disabled from settings
- **Docker Compose integration** — Manage multi-container applications defined in `compose.yaml` files
- **Volume and network management** — Visual tools for inspecting and managing storage volumes and container networks
- **Extensions Marketplace** — Add-on panel for third-party tools that integrate directly into the Desktop UI
- **Resource controls** — Adjustable limits for CPU, memory, and disk usage allocated to the Docker VM

## Use Cases

- **Local application development** — Running databases, caches, and services in isolated containers during development
- **Testing multi-service applications** — Using Compose to spin up entire application stacks locally
- **Learning containers and Kubernetes** — Experimenting with container orchestration without a remote cluster
- **CI/CD workflow validation** — Reproducing containerized build and test environments locally before pushing to a pipeline

## Who It's For

Docker Desktop is aimed at individual developers, students, and small teams who want a graphical, all-in-one way to run containers on their own machine. It is free for personal use, education, small businesses, and open source projects, while companies above the 250-employee or $10 million revenue thresholds must use a paid Pro, Team, or Business subscription.
