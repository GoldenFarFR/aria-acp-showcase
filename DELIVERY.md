# Delivery — Spark → Showcase

> **Objectif** : prouver que les crédits Spark Virtuals financent un agent **live**, pas du code dormant.

## Statut livraison

| Milestone | Statut | Preuve |
|-----------|--------|--------|
| Agent ACP live | ✅ | [app.virtuals.io/acp/agents](https://app.virtuals.io/acp/agents) — `019f0522-b57b-7e8e-a70a-aab2070e070e` |
| Offres USDC | ✅ | `analyse_lite_x1`, `analyse_full_x1`, `aria_full_access` |
| Compute Spark | ✅ | `compute.virtuals.io/v1` — voir [docs/economyos-setup.md](docs/economyos-setup.md) |
| Package Showcase PR | ❌ **fermée, non mergée (définitif)** | [`Virtual-Protocol/acp-cli-demos#37`](https://github.com/Virtual-Protocol/acp-cli-demos/pull/37) — rouverte 04/07 comme tracker blocage infra, corrigée sur feedback reviewer (`ytoast`, taxonomie topics), blocage HTTP 500 diagnostiqué et résolu (`LauJoeYing` : signer non enregistré → `acp agent add-signer`, trade mainnet confirmé OK) — **fermée 10/07/2026** par GoldenFarFR : gate S2 (receipt escrow job financé) toujours non rempli + **ACP n'est plus une priorité stratégique** pour l'équipe |
| Carte publique Showcase | ❌ **abandonnée** | Pas de merge prévu — ACP déprioritisé, package reste sur branche `GoldenFarFR/acp-cli-demos@showcase/aria-vanguard-zhc` pour archive |

## PR cible

```
showcase/aria-vanguard-zhc/
  showcase.json
  agent.yaml
  offerings/aria_vanguard_offerings.json
  skills/aria-analyse-lite/SKILL.md
  examples/*-proof.md
```

## Suite (ACP déprioritisé — 10/07/2026)

PR #37 fermée sans merge ; pas de plan de republication Showcase tant qu'ACP n'est pas
réactivé comme priorité. Éléments ci-dessous conservés comme trace, pas comme TODO actif :

1. **Vidéo X** — script : [`docs/x-demo-analyse-lite.md`](docs/x-demo-analyse-lite.md)
2. **Job escrow** — `scripts/smoke-analyse-lite.ps1` (wallet acheteur ≠ provider + USDC Base)
3. Health API — OK (~0,35 s au re-test 2026-07-04)
4. Receipt local moteur : [`examples/analyse_lite/job-receipt-local-smoke.md`](examples/analyse_lite/job-receipt-local-smoke.md)

### Bloqueur job test (résolu 10/07/2026)

- Symptôme (2026-07-04) : `create-job` / `job list` / `events listen` → `Server error 500 (viem)`
- **Cause réelle** (diagnostic `LauJoeYing`, Virtuals) : signer **non enregistré** sur le wallet agent — pas une panne infra Virtuals. Le backend renvoyait un 500 générique au lieu d'une erreur d'autorisation claire.
- **Fix** : `acp agent add-signer` relancé → confirmé résolu, trade mainnet exécuté avec succès.
- Reste non fait pour gate S2 : receipt d'un **job escrow financé** (acheteur ≠ provider). Wallet Base : topup acheteur requis (~2 USDC) — non prioritaire tant qu'ACP est déprioritisé.

## Repos centrés livraison

| Repo | Rôle |
|------|------|
| **aria-acp-showcase** (ici) | Vitrine builder + preuves |
| **ARIA** | Code produit |
| **acp-cli-demos** (fork) | Soumission Showcase Virtuals |