---
layout: default
title: Debate Framework
nav_order: 5
---

# Debate Framework

A structured decision-making framework for resolving disagreements with multiple viable options. Activated at decision points within any objective.

## Purpose

When there are multiple valid approaches, the debate framework ensures:
- All perspectives are heard
- Decisions are documented with rationale
- The best option wins on merit, not volume

## Process

```
Decision Question → Panel Assembly → Opening Statements
→ Cross-Examination Rounds → Scoring → Resolution → Log
```

### 1. Debate Trigger
A decision point arises with multiple viable options. The objective lead (or anyone) calls for a debate.

### 2. Panel Assembly
The Debate Facilitator assembles a panel of roles with stake in the decision. Each panelist represents their role's perspective.

### 3. Opening Statements
Each panelist presents their stance with evidence, from their role's perspective.

### 4. Cross-Examination Rounds
Structured rounds of rebuttal, questioning, and evidence presentation.

### 5. Scoring
Panelists score options against agreed criteria. Highest score wins.

### 6. Resolution
Decision recorded with rationale, rejected options, and consequences.

## Typical Debate Triggers

| Objective | Typical Debate | Panel |
|-----------|---------------|-------|
| Clarify Vision | Scope trade-off, priority | PM, BA, Architect |
| Design Solution | Tech stack, architecture fork | Architect, Backend, Frontend, Security |
| Plan Work | Sprint scope, capacity | EM, PM, Tech Lead |
| Build Feature | Implementation approach, library | Tech Lead, Dev, QA |
| Verify Quality | Test strategy, automation | QA, Dev, DevOps |
| Ship Release | Rollout strategy, rollback | DevOps, PM, Tech Lead |
| Operate & Learn | Refactor vs rewrite, tooling | Tech Lead, Architect, DevOps |

## Files

- `.agentcrew/debate/01-debate-trigger.md`
- `.agentcrew/debate/02-debate-panel.md`
- `.agentcrew/debate/03-debate-rounds.md`
- `.agentcrew/debate/04-debate-resolution.md`
- `.agentcrew/debate/05-debate-log.md`
