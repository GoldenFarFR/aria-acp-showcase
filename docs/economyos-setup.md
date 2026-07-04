# EconomyOS builder setup

## Credits

1. [Community program](https://os.virtuals.io/community) — link GitHub on agent **Compute**
2. Present this repo (`aria-acp-showcase`) + [ARIA](https://github.com/GoldenFarFR/ARIA) as builder signal
3. If auto-tier misses you: [Builder Review](https://virtualsprotocol.typeform.com/to/BwtdGEAL) or discretionary form on the agent Compute page

## Inference endpoint

```
base_url: https://compute.virtuals.io/v1
api_key:  <from EconomyOS Compute dashboard>
model:    claude-opus-4-7-fast  (or listed models)
```

## ACP CLI

```bash
npm i -g @virtuals-protocol/acp-cli
acp status
```

Agent wallet and offerings are configured in production via `aria-ops` (private operator repo).