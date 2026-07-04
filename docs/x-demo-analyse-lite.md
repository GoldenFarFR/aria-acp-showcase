# X demo — analyse_lite_x1 (Spark delivery proof)

> **Durée cible** : 60–90 s · **Format** : écran ACP + terminal · **Compte** : [@Aria_ZHC](https://x.com/Aria_ZHC)

## Prérequis avant tournage

1. Wallet **acheteur** ≠ wallet provider Aria (`0xd752a325…7bb3`)
2. **≥ 2 USDC** + un peu d'ETH gas sur Base (acheteur)
3. `npm i -g @virtuals-protocol/acp-cli` + `acp configure`
4. API Virtuals OK (si `500 viem` → reporter ou tourner via UI [app.virtuals.io/acp/agents](https://app.virtuals.io/acp/agents))

## Script vidéo (plan par plan)

| # | Écran | Action | Voix off (FR) |
|---|-------|--------|----------------|
| 1 | `os.virtuals.io/community#credits` ou Compute | Montrer Spark actif | « Spark Virtuals → on ship, pas on dormir. » |
| 2 | [app.virtuals.io/acp/agents](https://app.virtuals.io/acp/agents) | Chercher **Aria Vanguard ZHC** | « Agent live sur EconomyOS, Base. » |
| 3 | Fiche offre `analyse_lite_x1` — 1.99 USDC | Ouvrir requirements | « Scan lite : une adresse contrat Base. » |
| 4 | Coller `0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913` (USDC Base) | Fund escrow | « Job fundé — USDC en escrow ACP. » |
| 5 | Terminal provider | `acp job watch <job-id>` ou poll local | « Provider traite le job… » |
| 6 | Deliverable JSON | Montrer `liteVerdict` + `riskAlerts` | « Livrable structuré — pas du blabla. » |
| 7 | UI ACP | Approve / complete | « Escrow libéré — commerce agent réel. » |
| 8 | [ariavanguardzhc.com](https://ariavanguardzhc.com) + PR #37 | Fin | « Showcase PR ouverte — preuve publique. » |

## Commandes terminal (acheteur)

```powershell
$req = '{"contractAddress":"0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913"}'
acp client create-job `
  --offering-name analyse_lite_x1 `
  --provider 0xd752a325433f4d55c5e0b125be84845d7de47bb3 `
  --chain-id 8453 `
  --requirements $req `
  --json

# Remplacer JOB_ID
acp client fund --job-id JOB_ID --chain-id 8453
acp job history --job-id JOB_ID --chain-id 8453 --json
acp client complete --job-id JOB_ID --chain-id 8453
```

## Commandes terminal (provider / opérateur)

```powershell
cd $env:ARIA_OPS_ROOT\vanguard\operator
.\start-acp-local.ps1
# ou dans Telegram/API : « traiter jobs acp »
```

## Texte post X — EN (recommandé @Aria_ZHC)

```
Spark credits → shipped agent commerce on @virtuals_io EconomyOS.

Hired Aria Vanguard ZHC on ACP (Base):
• Funded analyse_lite_x1 (1.99 USDC escrow)
• Deliverable: liteVerdict + riskAlerts JSON
• Escrow released after inspect

Not financial advice — research-grade scan only.

Showcase PR: github.com/Virtual-Protocol/acp-cli-demos/pull/37
Hire: app.virtuals.io/acp/agents

#Virtuals #ACP #Base #AIAgents
```

## Texte post X — FR (option @GoldenFarFR)

```
Crédits Spark Virtuals → agent ACP livré sur Base.

Job analyse_lite_x1 fundé en escrow USDC → verdict SAFE/CAUTION/DANGER en JSON → release après inspection.

Preuve publique : PR Showcase #37 (acp-cli-demos)
Agent : Aria Vanguard ZHC · ariavanguardzhc.com

#Virtuals #EconomyOS #ACP
```

## Hashtags / mentions

- `@virtuals_io` `@buildonvirtuals` (si pertinent)
- Liens : PR #37, hire page, site

## Après publication

1. Ajouter URL post X dans `DELIVERY.md`
2. Mettre à jour `showcase.json` (`links.video`) si tu extrais le `.mp4` Twitter
3. Commenter sur PR #37 avec lien vidéo