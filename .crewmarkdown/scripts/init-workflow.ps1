<#
.SYNOPSIS
  Template generator: Interactive scaffold for custom/*.md files.
  Prompts user for project-specific context, then fills custom templates.
.PARAMETER Project
  Project name (non-interactive).
.PARAMETER Stack
  Tech stack (comma-separated).
.PARAMETER Ci
  CI/CD tool name.
.PARAMETER Tickets
  Ticket tracker name.
.PARAMETER Deploy
  Deploy target name.
.PARAMETER Monitoring
  Monitoring tool name.
.EXAMPLE
  .\.crewmarkdown\scripts\init-workflow.ps1
  .\.crewmarkdown\scripts\init-workflow.ps1 -Project "MyApp" -Stack "node,react,postgres"
#>

param(
  [string]$Project = '',
  [string]$Stack = '',
  [string]$Ci = '',
  [string]$Tickets = '',
  [string]$Deploy = '',
  [string]$Monitoring = ''
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $PSScriptRoot
$CustomDir = Join-Path $ScriptDir "custom"

Write-Host "============================================" -ForegroundColor Cyan
Write-Host " CrewMarkdown — Project Initializer" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "This will scaffold custom/*.md with your project context." -ForegroundColor White
Write-Host ""

if ([string]::IsNullOrWhiteSpace($Project)) {
  $Project = Read-Host "Project name"
  $Stack = Read-Host "Tech stack (comma-sep, e.g. node,react,postgres)"
  $Ci = Read-Host "CI/CD tool (e.g. GitHub Actions, GitLab CI)"
  $Tickets = Read-Host "Ticket tracker (e.g. GitHub Issues, Jira, Linear)"
  $Deploy = Read-Host "Deploy target (e.g. Vercel, AWS, Docker)"
  $Monitoring = Read-Host "Monitoring tool (e.g. Datadog, Sentry, Grafana)"
}

if ([string]::IsNullOrWhiteSpace($Stack)) { $Stack = "Not specified" }
if ([string]::IsNullOrWhiteSpace($Ci)) { $Ci = "Not specified" }
if ([string]::IsNullOrWhiteSpace($Tickets)) { $Tickets = "Not specified" }
if ([string]::IsNullOrWhiteSpace($Deploy)) { $Deploy = "Not specified" }
if ([string]::IsNullOrWhiteSpace($Monitoring)) { $Monitoring = "Not specified" }

$filled = 0

function Fill-Template {
  param(
    [string]$Phase,
    [string]$Context,
    [string]$Always,
    [string]$Never,
    [string]$Overrides,
    [string]$Reference
  )
  $file = Join-Path $CustomDir "$Phase.md"
  $phaseTitle = $Phase -replace '^[0-9]*-', '' -replace '-', ' '
  $phaseTitle = (Get-Culture).TextInfo.ToTitleCase($phaseTitle)

  $content = @"
# Custom: $phaseTitle

## Context
Project: $Project
$Context

## Always Do
$Always

## Never Do
$Never

## Overrides
$Overrides

## Reference
$Reference
"@

  Set-Content -LiteralPath $file -Value $content -Encoding UTF8
  $script:filled++
}

# Requirements
Fill-Template -Phase "01-requirements" `
  -Context "Tech stack: $Stack`r`nTicket tracker: $Tickets" `
  -Always "- Write user stories in format: As a... I want... So that...`r`n- Link every requirement to a ticket in $Tickets`r`n- Include acceptance criteria for each story" `
  -Never "- Write technical implementation details in requirements`r`n- Skip non-functional requirements" `
  -Overrides "(default procedure)" `
  -Reference "- $Tickets project board`r`n- Product docs (link)"

# Design
Fill-Template -Phase "02-design" `
  -Context "Tech stack: $Stack`r`nDeploy target: $Deploy" `
  -Always "- Include architecture decision records (ADR) for major choices`r`n- Use Mermaid diagrams for system architecture`r`n- Document API contracts before implementation" `
  -Never "- Over-engineer — design only what's needed for current sprint`r`n- Skip security considerations" `
  -Overrides "(default procedure)" `
  -Reference "- ADR template in docs/adr/`r`n- API style guide (link)"

# Development
Fill-Template -Phase "03-development" `
  -Context "CI/CD: $Ci`r`nDeploy target: $Deploy" `
  -Always "- Follow Conventional Commits (feat:, fix:, chore:, docs:)`r`n- All PRs must pass $Ci checks before merge`r`n- Include tests with every feature" `
  -Never "- Commit directly to main/master`r`n- Leave TODO/FIXME without a linked ticket" `
  -Overrides "- Code analysis step skips if codebase-map.md exists and is current" `
  -Reference "- Coding standards: link`r`n- PR template: link"

# QA
Fill-Template -Phase "04-qa" `
  -Context "CI/CD: $Ci" `
  -Always "- All tests must pass in $Ci before merge`r`n- Classify bugs by severity: Critical/Major/Minor`r`n- Write regression tests for every bug fix" `
  -Never "- Skip non-functional testing for MVP features`r`n- Mark tests as passed without evidence" `
  -Overrides "(default procedure)" `
  -Reference "- Test dashboard: link`r`n- Bug tracker: $Tickets"

# Deployment
Fill-Template -Phase "05-deployment" `
  -Context "CI/CD: $Ci`r`nDeploy target: $Deploy`r`nMonitoring: $Monitoring" `
  -Always "- Deployments go through $Ci pipeline — no manual deploys`r`n- Use feature flags for risky releases`r`n- Monitor $Monitoring dashboards for 30min post-deploy" `
  -Never "- Deploy on Fridays`r`n- Skip staging for 'small' changes" `
  -Overrides "(default procedure)" `
  -Reference "- $Monitoring dashboard: link`r`n- Runbook: link`r`n- On-call schedule: link"

# Maintenance
Fill-Template -Phase "06-maintenance" `
  -Context "Monitoring: $Monitoring" `
  -Always "- All alerts from $Monitoring route to on-call channel`r`n- Hotfixes bypass the full pipeline but still need review`r`n- Post-incident RCA within 48 hours" `
  -Never "- Apply hotfixes without testing in staging first`r`n- Ignore deprecation warnings" `
  -Overrides "(default procedure)" `
  -Reference "- $Monitoring alerts: link`r`n- Incident response runbook: link"

Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host " Done! $filled custom files scaffolded." -ForegroundColor Green
Write-Host " Edit them anytime: $CustomDir" -ForegroundColor White
Write-Host "============================================" -ForegroundColor Cyan
