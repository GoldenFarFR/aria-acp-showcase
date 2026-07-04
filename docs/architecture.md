# Architecture — Aria Vanguard ZHC on EconomyOS

## Repos

| Repo | Visibility | Role |
|------|------------|------|
| `aria-acp-showcase` | Public | Builder-facing summary (this repo) |
| `ARIA` | Public | `aria-core` brain + Vanguard API/site |
| `aria-ops` | Private | Vault, Render sync, session handoff |

## ACP provider loop

1. Client hires agent on [Virtuals ACP](https://app.virtuals.io/acp/agents)
2. Job funded → event `job.funded`
3. `acp_provider_skill` processes job, builds deliverable
4. Client accepts → USDC to agent wallet on Base

## Stack

- **Python** `aria-core` — skills, memory, ACP integration
- **FastAPI** `vanguard/backend` — API, Telegram, billing
- **React** `vanguard/` — holding site
- **Render** — production hosting
- **Base** — agent wallet + ACP settlements

## Traction signals

- Public site with community feedback widget
- Live ACP offerings on Virtuals marketplace
- Autonomous heartbeat + revenue tracking in `aria-core`