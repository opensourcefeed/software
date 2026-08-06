---
layout: software
title: "Mullvad VPN"
slug: mullvad
tagline: "Privacy-first VPN with no account or email required"
type: open-source
license: GPL-3.0 (client apps)
website: https://mullvad.net
logo: /assets/images/software/mullvad.svg
platforms: [Windows, macOS, Linux, Android, iOS]
category: vpn
alternative_to:
  - nordvpn
  - expressvpn
description: "Mullvad is a Swedish VPN with open source, GPL-3.0 client apps that require no email or personal information to sign up — accounts are just a random number."
last_modified_at: 2026-08-06
---

## Overview

Mullvad VPN, run by the Swedish company Amagicom AB, launched in 2009 and has built its entire identity around minimizing data collection to the point of not knowing who its own customers are. Signing up generates a random account number with no email, username, or password required; payment can be made in cash sent by mail or in cryptocurrency for users who want to avoid leaving any billing trail linked to their identity. This is a materially different model from providers that verify identity via email and payment processor records.

Mullvad's client apps are open source under GPL-3.0 and published on GitLab, and the company has commissioned and published multiple independent security audits of both its apps and server infrastructure. Mullvad charges a single flat rate regardless of subscription length — no multi-year discount structure — and has been vocal in industry commentary about the misleading marketing practices common among larger VPN providers, including some of its own competitors.

## Company Info

Mullvad VPN is operated by Amagicom AB, a privately held company founded in 2009 and based in Gothenburg, Sweden. Sweden's legal environment — including its stance on data retention and its history of pushing back on foreign surveillance requests — is part of why Mullvad, along with several other well-known VPN providers, chose to base operations there.

## Protocols

Mullvad supports both WireGuard and OpenVPN. WireGuard is the modern default in Mullvad's own apps, using a smaller, more auditable codebase and generally faster connection/reconnection times than OpenVPN; Mullvad layers its own key rotation on top to offset WireGuard's default behavior of storing static IP-to-key mappings on the server. OpenVPN remains available for users or devices that need it for compatibility reasons.

## Is Mullvad Open Source?

Mostly. Mullvad's client apps (desktop and mobile) are open source under GPL-3.0, published on GitLab, so their behavior can be independently verified rather than taken on trust. The server-side infrastructure is not open source — this is standard across the VPN industry, since a server's security depends on physical and operational controls, not just code, but it means "open source" here specifically describes the client, not the full service.

## Privacy Features

Beyond no-logs claims, Mullvad backs its privacy positioning with concrete mechanics: no email or personal details required to create an account (just a randomly generated number), support for paying in cash or cryptocurrency, and multiple independently commissioned security audits of both its apps and infrastructure, with results published publicly.

## Key Features

- **No account required** — Random account number generated at signup; no email or personal details needed
- **Cash and crypto payment** — Payment methods that don't require identity verification
- **Open source clients** — GPL-3.0 licensed apps, published and independently audited
- **Flat-rate pricing** — Single price regardless of subscription length, no multi-year discount tiers
- **WireGuard-first** — Built around the open source WireGuard protocol with a custom key rotation system

## Use Cases

- **Anonymous sign-up** — VPN access without linking an identity to the account
- **Auditable privacy claims** — Open source clients and published third-party audits
- **Predictable pricing** — Flat monthly rate without pressure toward long-term commitments

## Who It's For

Mullvad is aimed at privacy-focused users who want to minimize the personal data a VPN provider holds about them and prefer to verify client behavior through open source code rather than trust marketing claims. It's a flat-rate paid subscription with no free tier.
