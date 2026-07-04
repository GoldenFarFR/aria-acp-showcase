# Delivery — Spark → Showcase

> **Objectif** : prouver que les crédits Spark Virtuals financent un agent **live**, pas du code dormant.

## Statut livraison

| Milestone | Statut | Preuve |
|-----------|--------|--------|
| Agent ACP live | ✅ | [app.virtuals.io/acp/agents](https://app.virtuals.io/acp/agents) — `019f0522-b57b-7e8e-a70a-aab2070e070e` |
| Offres USDC | ✅ | `analyse_lite_x1`, `analyse_full_x1`, `aria_full_access` |
| Compute Spark | ✅ | `compute.virtuals.io/v1` — voir [docs/economyos-setup.md](docs/economyos-setup.md) |
| Package Showcase PR | ✅ ouverte | [Virtual-Protocol/acp-cli-demos#37](https://github.com/Virtual-Protocol/acp-cli-demos/pull/37) |
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

1. Vidéo X courte : fund job → deliverable JSON → escrow release
2. Health API stable (`api.ariavanguardzhc.com/api/health`)
3. 3+ jobs ACP payants documentés (receipts redacted)

## Repos centrés livraison

| Repo | Rôle |
|------|------|
| **aria-acp-showcase** (ici) | Vitrine builder + preuves |
| **ARIA** | Code produit |
| **acp-cli-demos** (fork) | Soumission Showcase Virtuals |