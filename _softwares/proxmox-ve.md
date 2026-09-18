---
layout: software
title: "Proxmox VE"
slug: proxmox-ve
tagline: "Open source server virtualization platform built on KVM and LXC"
type: open-source
license: AGPL-3.0
website: https://www.proxmox.com/en/products/proxmox-virtual-environment/overview
platforms: [Linux]
category: virtualization
logo: /assets/images/software/proxmox-ve.svg
alternative_to:
  - vmware-workstation
description: "Proxmox VE is an open source, web-managed server virtualization platform combining KVM virtual machines and LXC containers, with every feature available free under the AGPL-3.0 license and optional paid support subscriptions."
faq:
  - question: "Is Proxmox VE free?"
    answer: "Yes. Proxmox VE is free to download, install, and run in production, including commercial use, with every feature available in the free download. Paid subscriptions add access to a more conservatively tested Enterprise package repository and official support, rather than unlocking extra features."
  - question: "Is Proxmox VE open source?"
    answer: "Yes. Proxmox VE is released under the GNU Affero General Public License version 3 (AGPL-3.0), and its source code is publicly available."
featured_image: proxmox-ve.webp
last_modified_at: 2026-09-18
---

## Overview

Proxmox VE (Virtual Environment) is an open source server virtualization platform developed by Proxmox Server Solutions GmbH, built on top of Debian Linux. It manages both KVM-based virtual machines and LXC system containers through a single web-based management interface, positioning it as a self-hosted alternative to enterprise server virtualization platforms. The project is released under the GNU Affero General Public License version 3, and every feature present in the software is available in the free download with no functionality gated behind a paid tier.

Proxmox offers paid subscriptions that grant access to a more conservatively tested Enterprise package repository and official vendor support, which is the intended path for production deployments that want tested updates and a support contract; the free "no-subscription" repository remains fully functional and is commonly used in homelab and smaller-scale deployments. Proxmox VE includes built-in tools for clustering multiple servers, configuring high availability, and managing software-defined storage and networking.

## Key Features

- **KVM and LXC in one platform** — Manage full virtual machines and lightweight system containers from a single interface
- **Web-based management** — Administer the entire cluster through a browser, without needing a separate management server
- **Clustering and high availability** — Group multiple Proxmox nodes together with automatic VM failover
- **Live migration** — Move running VMs between cluster nodes with minimal downtime
- **Software-defined storage** — Built-in support for ZFS, Ceph, and other storage backends
- **Built-in backup** — Integrated VM and container backup and restore tooling

## Use Cases

- **Home lab and self-hosted infrastructure** — Running multiple VMs and containers on personal or small-office hardware
- **Small business server consolidation** — Replacing multiple physical servers with virtualized workloads on fewer machines
- **Enterprise server virtualization** — Clustered, highly available deployments as an alternative to commercial hypervisor platforms
- **Learning virtualization and clustering** — A free, full-featured environment for studying server virtualization concepts

## Who It's For

Proxmox VE is aimed at system administrators, homelab enthusiasts, and businesses who want a free, open source, server-grade virtualization platform with clustering and high-availability features built in, rather than a desktop hypervisor for running a few VMs on a personal workstation. Users who specifically need a lightweight desktop VM tool rather than a server platform may be better served by VirtualBox or QEMU/KVM directly.
