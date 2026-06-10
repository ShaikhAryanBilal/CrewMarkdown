<#
.SYNOPSIS
Generates GitHub Actions CI workflow from .agentcrew/state/workflow.json.
Reads objectives/completed steps and produces a .github/workflows/agentcrew-ci.yml.
.PARAMETER OutputDir
Directory to write CI file (default: .github/workflows)
.EXAMPLE
.\.agentcrew\scripts\ci-gen.ps1
#>

param(
  [string]$OutputDir = ''
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
$ProjectRoot = (Resolve-Path "$PSScriptRoot\..\..").Path.TrimEnd('\')
$StateFile = Join-Path $ProjectRoot ".agentcrew" "state" "workflow.json"

if (-not $OutputDir) { $OutputDir = Join-Path $ProjectRoot ".github" "workflows" }
New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null

$state = Get-Content $StateFile -Raw | ConvertFrom-Json
$objectives = $state.achievedObjectives
$pending = @($objectives | Where-Object { $_ -notin ($state.completedSteps | ForEach-Object { $_.objective }) })

$ciContent = @"
name: AgentCrew CI
on: [push, pull_request]
jobs:
  validate-workflow:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Validate workflow integrity
        run: |
          chmod +x .agentcrew/scripts/validate-workflow.sh
          .agentcrew/scripts/validate-workflow.sh
"@

if ($pending.Count -gt 0) {
  $ciContent += @"

  pending-objectives:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Check pending objectives
        run: |
          echo "Pending objectives:"
"@
  foreach ($o in $pending) {
    $ciContent += "          echo '  - $o'`n"
  }
}

$outPath = Join-Path $OutputDir "agentcrew-ci.yml"
$ciContent | Out-File $outPath -Encoding utf8
Write-Host "CI workflow written: $outPath" -ForegroundColor Green
