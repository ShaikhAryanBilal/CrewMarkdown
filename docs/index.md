---
layout: home
title: Home
nav_order: 1
---

# AgentCrew

**Autonomous AI Squads That Ship Production Software**

16 specialized AI roles | 7 lifecycle objectives | Solo · Squad · Orchestrated

---

## Why AgentCrew?

AI agents are great at writing code but **terrible at software process**. Without structure, every prompt is a gamble — you might get code with no tests, no threat model, no PRD, no deploy plan.

AgentCrew gives AI agents a **repeatable SDLC brain**. 16 roles with hardened contracts, workflows, and quality gates. Drop it in any project, point your AI at it, and get production-grade results.

**No SaaS. No API keys. No vendor lock.** Just markdown files any AI agent can read.

---

## How It Works

| Mode | Example | What Happens |
|------|---------|-------------|
| **Solo** | *"Architect, design the DB"* | Single role, 0 orchestration overhead |
| **Squad** | *"Team, design the solution"* | Multiple roles, one objective, parallel execution |
| **Orchestrated** | *"Build the payment system"* | Orchestrator → 7 objectives → squads → track → ship |

---

## The Crew (16 Roles)

| Role | Superpower | Produces |
|------|-----------|----------|
| **Orchestrator** | Coordinates full lifecycle | Decomposition, squads, status |
| **Product Manager** | Requirements, priorities | PRD, roadmap, acceptance criteria |
| **Business Analyst** | Analysis, user stories | Requirements spec, dependency map |
| **Solution Architect** | Architecture, tech stack | ADRs, system diagrams, tech decisions |
| **Tech Lead** | Standards, code quality | ADRs, code review, tech debt plan |
| **Frontend Dev** | UI, client logic | Components, integration, state |
| **Backend Dev** | API, data, services | APIs, DB schema, business logic |
| **Mobile Dev** | iOS/Android | Mobile UI, push, offline, store |
| **UX Designer** | Research, wireframes | Personas, prototypes, design system |
| **Data Engineer** | ETL, pipelines | Data models, lineage, quality checks |
| **ML Engineer** | Models, training, serving | Model card, eval report, drift monitor |
| **QA Engineer** | Testing, quality | Test plan, bug report, sign-off |
| **Security Engineer** | Threat model, pentest | Threat model, SBOM, scan results |
| **DevOps Engineer** | CI/CD, infra | Pipeline, deploy plan, runbook |
| **Engineering Manager** | Sprint planning, retro | Sprint plan, velocity report, retro |
| **Debate Facilitator** | Decision moderation | Structured debate, scored options |

---

## Quick Start

```bash
# 1. Copy to your project
cp -r .agentcrew ./your-project/

# 2. Generate codebase map
./.agentcrew/scripts/generate-codebase-map.ps1

# 3. Configure AI agents
./.agentcrew/config/setup.ps1        # Windows
./.agentcrew/config/setup.sh --all   # Linux/macOS

# 4. Make a request
#    "PM, write a PRD for login"
#    "Squad (QA, Security), verify quality"
#    "Build the full e-commerce platform"
```

---

## Project Structure

```
.agentcrew/
├── 00-objectives.md       # Routing table — start here
├── 00-team.md             # Crew orchestration hub
├── 00-roles.md            # 16 role definitions
├── objectives/            # 7 lifecycle objectives
├── roles/                 # 16 role contracts + workflows
├── procedures/            # Step-by-step guides
├── debate/                # Decision framework
├── custom/                # Per-project overrides
├── config/                # Agent config templates
├── light/                 # 7-step compressed variant
├── animations/            # Retro RPG party screen
├── scripts/               # State dashboard + utils
├── log/                   # Execution logs
└── state/workflow.json    # Progress tracker
```

---

## Variants

| Variant | When |
|---------|------|
| **Full** (default) | 7 objectives, full squads, all gates |
| **Light** (`.agentcrew/light/`) | MVPs, prototypes, solo dev — compressed |

Switch any time. Complexity grows → use full. Project stable → light.

---

**MIT Licensed** · Built for AI-native development
