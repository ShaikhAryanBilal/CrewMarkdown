---
layout: default
title: Orchestrator
parent: Roles
nav_order: 1
---

# Orchestrator

**Coordinates full lifecycle** — decomposes requests, assembles squads, tracks progress, resolves cross-objective dependencies.

## Mode: Meta-role (activates on multi-objective requests)

### Needs
- High-level user request
- Role availability / capability (`00-team.md`)
- Objective definitions (`objectives/`)
- Existing project context (`codebase-map.md`)
- Previous state (`state/workflow.json`)

### Produces
- Objective breakdown (objectives + order)
- Squad assignments per objective
- Coordination plan (schedule, dependencies)
- Risk register
- Status reports
- Final completion report

### Invocation
- **Orchestrated**: *"Build the e-commerce platform"* — decomposes into objectives, assigns squads
- **Skip**: Single-objective or solo role requests bypass orchestration

### Key Workflow
```
User Request → Parse → Map to objectives → Order by dependencies
→ For each objective: assign squad → track → resolve → verify
→ All complete → Report to user
```

### Contract
`.agentcrew/roles/orchestrator/contract.md` · `.agentcrew/roles/orchestrator/workflow.md`
