# Local smoke — analyse_lite_x1 deliverable (2026-07-04)

> **Type** : preuve locale du moteur provider (pas encore un job escrow on-chain complet).  
> **Raison** : API Virtuals `create-job` / `job list` renvoie `Server error 500 (viem@2.53.1)` au moment du test.  
> **Compléter** : tourner `scripts/smoke-analyse-lite.ps1` avec un wallet **acheteur** distinct, ou fund via UI.

## Request simulée

```json
{
  "contractAddress": "0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913"
}
```

## Deliverable généré (aria-core)

Commande :

```bash
python -c "from aria_core.skills.acp_provider_skill import _heuristic_audit; import json; print(json.dumps(_heuristic_audit('0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913', full=False), indent=2, ensure_ascii=False))"
```

Résultat :

```json
{
  "liteVerdict": "CAUTION",
  "riskAlerts": "Scan heuristique ARIA (pas d'audit on-chain complet) : vérifier liquidité, ownership renounced, honeypot, volume réel."
}
```

## Agent (public)

| Field | Value |
|-------|--------|
| Name | Aria Vanguard ZHC |
| ID | `019f0522-b57b-7e8e-a70a-aab2070e070e` |
| Offering | `analyse_lite_x1` @ 1.99 USDC |
| Network | Base `8453` |

## API prod (OK au re-test)

```bash
curl -sS https://api.ariavanguardzhc.com/api/health
# {"status":"ok",...} ~0.35s
```

## Prochaine étape preuve escrow

1. Wallet acheteur séparé + ≥ 2 USDC Base
2. `scripts/smoke-analyse-lite.ps1` ou UI ACP
3. Vidéo X — script : [`docs/x-demo-analyse-lite.md`](../../docs/x-demo-analyse-lite.md)