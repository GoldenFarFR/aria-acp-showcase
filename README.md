# Aria Vanguard ZHC — ACP Showcase

[![EconomyOS](https://img.shields.io/badge/EconomyOS-Virtual%20Protocol-00d4aa)](https://os.virtuals.io/)
[![ACP](https://img.shields.io/badge/ACP-Agent%20Commerce-blue)](https://app.virtuals.io/acp/agents)
[![Base](https://img.shields.io/badge/Chain-Base-0052FF)](https://base.org/)
[![Site](https://img.shields.io/badge/Site-ariavanguardzhc.com-purple)](https://ariavanguardzhc.com)

Autonomous AI agent on [Virtual Protocol EconomyOS](https://os.virtuals.io/) — live ACP provider on Base.

> **Builder entry point** for DevRel / discretionary credits review. Full product code: [GoldenFarFR/ARIA](https://github.com/GoldenFarFR/ARIA).

## Live agent

| Field | Value |
|-------|--------|
| Name | Aria Vanguard ZHC |
| Agent ID | `019f0522-b57b-7e8e-a70a-aab2070e070e` |
| Hire | [app.virtuals.io/acp/agents](https://app.virtuals.io/acp/agents) |
| Site | [ariavanguardzhc.com](https://ariavanguardzhc.com) |
| API | [api.ariavanguardzhc.com/api/health](https://api.ariavanguardzhc.com/api/health) |
| X | [@Aria_ZHC](https://x.com/Aria_ZHC) |

## ACP services (production)

| Service | Price | SLA | Deliverable |
|---------|-------|-----|-------------|
| `analyse_lite_x1` | 1.99 USDC | 5 min | SAFE / CAUTION / DANGER scan (Base) |
| `analyse_full_x1` | 4.99 USDC | 5 min | Deeper on-chain analysis |
| `aria_full_access` | 19.99 USDC / 30d | — | Subscription bundle |

Research-grade output only — not financial advice.

## Architecture

```
Client (Virtuals ACP) → job.funded
       ↓
aria-core ACP provider (poll / listener)
       ↓
Deliverable JSON + escrow release
       ↓
Site + API (vanguard/) — ariavanguardzhc.com
```

## Code map (ARIA repo)

| Module | Path |
|--------|------|
| ACP CLI wrapper | [`acp_cli.py`](https://github.com/GoldenFarFR/ARIA/blob/main/packages/aria-core/src/aria_core/skills/acp_cli.py) |
| Provider skill | [`acp_provider_skill.py`](https://github.com/GoldenFarFR/ARIA/blob/main/packages/aria-core/src/aria_core/skills/acp_provider_skill.py) |
| Offerings config | [`acp_offerings.yaml`](https://github.com/GoldenFarFR/ARIA/blob/main/packages/aria-core/src/aria_core/knowledge/acp_offerings.yaml) |
| Marketplace intel | [`acp_market_intelligence.py`](https://github.com/GoldenFarFR/ARIA/blob/main/packages/aria-core/src/aria_core/skills/acp_market_intelligence.py) |
| Vanguard API | [`vanguard/backend/`](https://github.com/GoldenFarFR/ARIA/tree/main/vanguard/backend) |

## Quick start (builders)

```bash
npm i -g @virtuals-protocol/acp-cli
acp status   # with agent wallet configured
```

Inference via EconomyOS: `https://compute.virtuals.io/v1` — see [docs/economyos-setup.md](docs/economyos-setup.md).

## Example job

[`examples/analyse_lite/README.md`](examples/analyse_lite/README.md) — requirements → deliverable JSON shape.

## Security

Operator secrets and deploy scripts live in **private** repo `aria-ops` (not public). Product repos contain no production `.env`.

## License

MIT — examples only. Agent brand © GoldenFar.