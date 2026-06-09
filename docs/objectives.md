---
layout: default
title: Objectives
nav_order: 3
has_children: true
permalink: /objectives/
---

# Objectives (SDLC Lifecycle)

AgentCrew defines **7 lifecycle objectives** covering the full software development lifecycle. Each objective is a self-contained unit with a goal, squad, schedule, artifacts, and acceptance criteria.

## The 7 Objectives

| # | Objective | Squad | Default Mode |
|---|-----------|-------|-------------|
| 1 | **Clarify Vision** | PM, BA | Squad |
| 2 | **Design Solution** | Architect, UX, Security, Data Engineer | Squad |
| 3 | **Plan Work** | EM, PM, Tech Lead | Squad |
| 4 | **Build Feature** | Dev(s), Mobile Dev, Data Engineer, ML Engineer, Tech Lead | Solo/Squad |
| 5 | **Verify Quality** | QA, Security, Dev(s), ML Engineer | Squad |
| 6 | **Ship Release** | DevOps, PM | Solo/Squad |
| 7 | **Operate & Learn** | DevOps, EM, PM, ML Engineer, Data Engineer | Solo/Squad |

## How Objectives Work

```
Request → Objective(s) → Squad(s) → Artifacts → Done
```

| Mode | Pattern | When |
|------|---------|------|
| **Solo** | `[Role], do [task]` | Single role, self-contained |
| **Squad** | `Squad ([roles]), achieve [objective]` | Multiple roles, one objective |
| **Orchestrate** | `Build [feature/system]` | Multiple objectives, full lifecycle |

## Security Gates

| Gate | Before | In Objective | Must Pass |
|------|--------|-------------|-----------|
| SG1 | Design review | Design Solution | Threat model complete, high threats mitigated |
| SG2 | Merge to main | Build Feature | SAST + secret scan + dependency scan clean |
| SG3 | QA sign-off | Verify Quality | DAST + pentest + supply chain scan — no Critical/High |
| SG4 | Production deploy | Ship Release | All scans clean, no Critical/High bugs, SBOM verified |

## Request → Objective Routing

| You Say | Objective |
|---------|-----------|
| *"Define requirements" / "Write PRD"* | Clarify Vision |
| *"Design the system" / "Architecture"* | Design Solution |
| *"Plan the sprint" / "Break down work"* | Plan Work |
| *"Implement X" / "Write code for X"* | Build Feature |
| *"Test this" / "QA sign-off" / "Security audit"* | Verify Quality |
| *"Deploy to prod" / "Release"* | Ship Release |
| *"Set up monitoring" / "Hotfix" / "Feedback"* | Operate & Learn |
