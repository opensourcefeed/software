---
layout: software
title: "Podman Desktop"
slug: podman-desktop
tagline: "Open source GUI for containers and Kubernetes"
type: open-source
license: Apache-2.0
website: https://podman-desktop.io
platforms: [Linux, Windows, macOS]
category: containerization
logo: /assets/images/software/podman-desktop.svg
alternative_to:
  - docker-desktop
description: "Podman Desktop is a free, open source graphical tool for managing containers, pods, and Kubernetes clusters, built around Podman's daemonless, rootless engine."
last_modified_at: 2026-07-26
---

## Overview

Podman Desktop is a free and open source graphical application for managing containers, pods, images, volumes, and Kubernetes workloads, distributed under the Apache-2.0 license. It is developed by the containers organization, the same community that maintains Podman itself, and is backed primarily by Red Hat. The project reached its first stable release, v1.0.0, on May 17, 2023, several years after Podman's own initial release in 2018, and has since been accepted as a Cloud Native Computing Foundation (CNCF) sandbox project.

Podman Desktop is a separate application from Podman: Podman is the underlying container engine, while Podman Desktop is the desktop GUI layer that sits on top of it, handling engine installation, updates, and day-to-day container and Kubernetes management through a visual interface. Because it is built around Podman's daemonless, rootless architecture, Podman Desktop does not require a constantly running background service with elevated privileges to operate — a structural difference from tools that depend on a root-owned daemon process. In addition to Podman, Podman Desktop can also manage other container engines, including Docker, Lima, and CRC, through its multi-engine support and context switching.

## Key Features

- **Daemonless, rootless architecture** — Built on Podman's engine, which runs containers without a persistently running root daemon, reducing the attack surface
- **Container, pod, and image management** — Dashboards for managing containers, pods, images, and volumes through a graphical interface
- **Kubernetes integration** — Deploy to and manage local clusters (such as Kind or Minikube) or remote Kubernetes environments, with built-in logging, metrics, and debugging
- **Multi-engine support** — Can also manage Docker, Lima, and CRC container engines alongside Podman, with context switching between them
- **Extension system** — Extensible through an official extension architecture for adding new engines, registries, and tooling
- **OCI and Docker Compose compatibility** — Supports OCI-standard images and Docker Compose files
- **Cross-architecture support** — Works across ARM and x86_64 architectures
- **Enterprise features** — Proxy/VPN support and air-gapped installation options

## Use Cases

- **Application developers** — Building, running, and debugging containerized applications locally without managing a background daemon
- **Kubernetes developers** — Deploying and inspecting workloads on local or remote clusters from a graphical interface
- **Security-conscious teams** — Running containers without root privileges by default, using Podman's rootless model
- **Teams migrating from Docker Desktop** — Managing existing Docker-based workflows through Podman Desktop's multi-engine support

## Who It's For

Podman Desktop is suited to developers and platform teams who want a graphical container and Kubernetes management tool without depending on a licensed, root-daemon-based engine. It is particularly relevant for organizations evaluating alternatives to Docker Desktop's subscription model, and for users who prioritize Podman's daemonless, rootless security model for local development.
