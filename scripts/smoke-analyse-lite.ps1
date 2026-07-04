# Smoke test analyse_lite_x1 — buyer wallet must differ from provider wallet
# Usage: .\smoke-analyse-lite.ps1 [-Provider 0xd752...] [-Contract 0x833589...]

param(
    [string]$Provider = "0xd752a325433f4d55c5e0b125be84845d7de47bb3",
    [string]$Contract = "0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913",
    [string]$Offering = "analyse_lite_x1",
    [string]$ChainId = "8453"
)

$ErrorActionPreference = "Stop"

function Invoke-AcpJson {
    param([string[]]$AcpArgs)
    $out = & acp @AcpArgs --json 2>&1 | Out-String
    if ($LASTEXITCODE -ne 0) {
        throw "acp failed: $out"
    }
    return ($out.Trim() | ConvertFrom-Json)
}

Write-Host "=== ACP smoke analyse_lite_x1 ===" -ForegroundColor Cyan
Write-Host "Provider: $Provider"
Write-Host "Contract: $Contract"
Write-Host ""

$who = (& acp agent whoami 2>&1) -join ""
Write-Host "Active agent: $who"
if ($who -match $Provider.Replace("0x","")) {
    Write-Warning "Wallet actif = provider. Utilise un autre agent acp configure (acheteur) ou l'UI Virtuals."
}

$req = @{ contractAddress = $Contract } | ConvertTo-Json -Compress
Write-Host "Creating job..."
try {
    $created = Invoke-AcpJson @(
        "client","create-job",
        "--offering-name",$Offering,
        "--provider",$Provider,
        "--chain-id",$ChainId,
        "--requirements",$req
    )
    $jobId = $created.jobId ?? $created.id ?? $created.job_id
    if (-not $jobId) { $created | ConvertTo-Json -Depth 6 | Write-Host; throw "job id introuvable dans la réponse" }
    Write-Host "Job created: $jobId" -ForegroundColor Green

    Write-Host "Funding..."
    & acp client fund --job-id $jobId --chain-id $ChainId
    if ($LASTEXITCODE -ne 0) { throw "fund failed" }

    Write-Host "History:"
    & acp job history --job-id $jobId --chain-id $ChainId --json

    Write-Host ""
    Write-Host "Next: traiter jobs acp (provider) puis acp client complete --job-id $jobId" -ForegroundColor Yellow
} catch {
    Write-Host "ERREUR: $_" -ForegroundColor Red
    Write-Host "Si Server error 500 viem — API Virtuals indisponible. Utilise l'UI ou réessaie plus tard." -ForegroundColor DarkYellow
    exit 1
}