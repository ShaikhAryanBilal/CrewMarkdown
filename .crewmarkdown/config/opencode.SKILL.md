---
name: CrewMarkdown
description: >
  CrewMarkdown — universal agent router for engineering, business, creative, and operations.
  Every request routes through `.crewmarkdown/00-objectives.md`. Roles work solo, squad,
  or orchestrated. Each has contract + workflow + skills + templates.
  Also triggered by: "CrewMarkdown", "workflow", "follow the process", /CrewMarkdown.
---

# CrewMarkdown Skill

## Detection

1. Check if `.crewmarkdown/00-objectives.md` exists in project root
2. If yes → use this skill. If no → skip.

## Before Routing

1. **Codebase Map** — If `codebase-map.md` exists at project root, read it first.
2. **Custom Instructions** — Before each objective, check `.crewmarkdown/custom/<phase>.md`.

## Routing (all requests)

1. Read `.crewmarkdown/00-objectives.md` → consult routing table → pick objective
2. Read objective file → know goal, squad, artifacts, acceptance
3. Load `.crewmarkdown/00-team.md` for invocation pattern (solo/squad/orchestrate)
4. Load each role's contract.md + workflow.md from `.crewmarkdown/roles/<role>/`
5. Load relevant old step files (from `.crewmarkdown/<phase>/`) as procedure references
6. Read `.crewmarkdown/custom/<phase>.md` → apply custom overrides
7. Execute: roles produce artifacts per objective
8. **Log:** Write `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-[<HHmmss>]/<role>.md` (derive `<chat-slug>` from request text)
9. **State:** Update `.crewmarkdown/state/workflow.json` with achieved objectives
10. Verify acceptance criteria

## State Tracking

- Track objective completion in `.crewmarkdown/state/workflow.json`
- Log per-role artifacts per objective
- On revert: re-execute the failed objective with same or adjusted squad

## Invocation Modes

| Mode | Pattern | When |
|------|---------|------|
| Solo | "[Role], do [task]" | Single role, self-contained task |
| Squad | "Squad ([roles]), achieve [objective]" | Multiple roles, one objective |
| Orchestrate | "Build this [feature/system]" | Multiple objectives, full lifecycle |
| Meeting | "/meeting [topic]" | Structured deliberation, decisions |
| Incident | "/incident [signal]" | Production issue, outage, SEV |
| Review | "/review [artifact]" | Code, design, PRD, docs review |
| Interview | "/interview [topic]" | User research, stakeholder discovery |
| Negotiation | "/negotiate [issue]" | Conflict resolution, trade-offs |
| Retrospective | "/retro [period]" | Sprint/project reflection, improvement |
| Hackathon | "/hackathon [theme]" | Rapid prototyping, innovation sprint |
| Onboarding | "/onboard [role]" | New hire ramp-up, guided orientation |

## Domain Scope

CrewMarkdown is not just for coding:
- **Engineering**: full-stack dev, data pipelines, ML, infra, QA, security
- **Business**: marketing campaigns, sales strategy, hiring, budgeting, compliance
- **Creative**: content strategy, UX research, brand, visual design
- **Operations**: incident response, retrospectives, onboarding, meetings, reviews, negotiations
- **Strategy**: OKRs, architecture decisions, sprint planning, GTM planning

## Objectives

Default pipeline (engineering): `Clarify Vision → Design Solution → Plan Work → Build Feature → Verify Quality → Ship Release → Operate & Learn`

Other objectives for non-engineering work:
- `09-execute-campaign.md` — marketing, GTM, content campaigns
- `10-people-ops.md` — hiring, onboarding, culture, performance
- `08-conduct-meeting.md` — meetings, brainstorms, syncs
- Meeting/Incident/Review/Interview/Negotiation/Retro/Onboarding/Hackathon modes

Each objective has a goal, squad, schedule, artifacts, and acceptance criteria.
Old step files serve as procedure guides for roles.
