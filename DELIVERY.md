# Delivery — Spark → Showcase

> **Objectif** : prouver que les crédits Spark Virtuals financent un agent **live**, pas du code dormant.

## Statut livraison

| Milestone | Statut | Preuve |
|-----------|--------|--------|
| Agent ACP live | ✅ | [app.virtuals.io/acp/agents](https://app.virtuals.io/acp/agents) — `019f0522-b57b-7e8e-a70a-aab2070e070e` |
| Offres USDC | ✅ | `analyse_lite_x1`, `analyse_full_x1`, `aria_full_access` |
| Compute Spark | ✅ | `compute.virtuals.io/v1` — voir [docs/economyos-setup.md](docs/economyos-setup.md) |
| Package Showcase PR | ⏸️ **pas encore** | Gate [`PR-READINESS-NORM`](https://github.com/GoldenFarFR/aria-ops/blob/main/collegue-memoire/sessions/PR-READINESS-NORM.md) — branche [`GoldenFarFR/acp-cli-demos`](https://github.com/GoldenFarFR/acp-cli-demos/tree/showcase/aria-vanguard-zhc) (PR #37 fermée, trop tôt) |
| Carte publique Showcase | ⏳ | Après merge PR + sync docs |

## PR cible

```
showcase/aria-vanguard-zhc/
  showcase.json
  agent.yaml
  offerings/aria_vanguard_offerings.json
  skills/aria-analyse-lite/SKILL.md
  examples/*-proof.md
```

## Prochaines preuves (post-merge)

1. **Vidéo X** — script : [`docs/x-demo-analyse-lite.md`](docs/x-demo-analyse-lite.md)
2. **Job escrow** — `scripts/smoke-analyse-lite.ps1` (wallet acheteur ≠ provider + USDC Base)
3. Health API — OK (~0,35 s au re-test 2026-07-04)
4. Receipt local moteur : [`examples/analyse_lite/job-receipt-local-smoke.md`](examples/analyse_lite/job-receipt-local-smoke.md)

### Bloqueurs job test (2026-07-04)

- API Virtuals : `create-job` / `job list` → `Server error 500 (viem@2.53.1)`
- Un seul agent CLI (`Aria Vanguard ZHC`) — ACP interdit auto-achat même wallet
- Wallet Base : 0 USDC visible — topup acheteur requis (~2 USDC)

## Repos centrés livraison

| Repo | Rôle |
|------|------|
| **aria-acp-showcase** (ici) | Vitrine builder + preuves |
| **ARIA** | Code produit |
| **acp-cli-demos** (fork) | Soumission Showcase Virtuals |