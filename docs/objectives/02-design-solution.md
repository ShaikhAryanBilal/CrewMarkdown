---
layout: default
title: 2. Design Solution
parent: Objectives
nav_order: 2
---

# Objective: Design Solution

Design the system architecture, UX, and security model to satisfy the signed-off PRD.

## Squad

| Role | Responsibility |
|------|---------------|
| Architect | System architecture, tech stack, DB, API |
| UX Designer | Wireframes, prototypes, design system |
| Security Engineer | Threat model, security requirements |
| Data Engineer | Data architecture (if needed) |

## Schedule

```
Architect: PRD Review → Options → ADRs → Tech Spec → Design Review
UX:        Research → Wireframes → Prototype → Visual Design
Security:                         Threat Model → Security Reqs
```

**Parallel**: Architecture + UX + Security can work simultaneously.
**Sequential**: Design Review requires all three complete.

## Dependencies

- **Needs**: Signed-off PRD (from Clarify Vision)
- **Blocks**: Plan Work, Build Feature

## Artifacts

| Role | Produces |
|------|----------|
| Architect | ADRs, C4 diagrams, tech spec, DB design, API contracts |
| UX Designer | User flows, wireframes, prototypes, design assets |
| Security Engineer | Threat model, security requirements |
| Data Engineer | Data architecture, data model |

## Acceptance

- All ADRs written with context, options, decision, consequences
- C4 diagrams at Context + Container level
- Wireframes/prototypes for all key screens
- Threat model complete with mitigations for Critical/High threats
- **SG1 gate passed**: Threat model complete, high threats mitigated

## Security Gate: SG1

Before design is approved: Threat model must be complete, and all high-severity threats must have documented mitigations.

## Solo Invocation

- *"Architect, design the DB schema for payments"*
- *"UX Designer, create wireframes for the dashboard"*
- *"Security, run threat modeling on the authentication flow"*
