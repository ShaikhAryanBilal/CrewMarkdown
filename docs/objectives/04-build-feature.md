---
layout: default
title: 4. Build Feature
parent: Objectives
nav_order: 4
---

# Objective: Build Feature

Implement, review, unit test, and integrate working code for a feature according to the approved design and coding standards.

## Squad

| Role | Responsibility |
|------|---------------|
| Frontend Developer | UI implementation, component tests |
| Backend Developer | API, services, data layer, business logic |
| Tech Lead | Code review, standards enforcement, merge approval |
| Data Engineer | Data pipelines (if needed) |
| ML Engineer | Model training/serving (if needed) |

**Note**: Assign specific roles based on feature scope. Not all are needed for every feature.

## Schedule

```
Dev:  Codebase Analysis → Implementation → PR
                                           ↓
Tech Lead:                          Code Review → Merge
                                           ↓
Dev:                             Unit Tests → Integration
```

**Sequential**: Analysis → Implementation → Review → Tests → Integration.
**Parallel**: Frontend + Backend can work simultaneously on separate concerns.

## Dependencies

- **Needs**: Approved design, coding standards, sprint plan
- **Blocks**: Verify Quality

## Artifacts

| Role | Produces |
|------|----------|
| Dev | Codebase analysis, implementation code |
| Dev | Unit tests (coverage ≥ 80%), integration tests |
| Tech Lead | Code review comments, merge commit |

## Acceptance

- Code follows coding standards (lint + format pass)
- All acceptance criteria from user stories met
- Unit test coverage ≥ 80%
- Integration tests pass
- Code review: all 🔴 items resolved, 🟡 items acknowledged
- **SG2 gate**: SAST + secret scan + dep scan clean
- Feature branch merged to main

## Security Gate: SG2

Before merge to main: SAST, secret detection, dependency scan must pass.

## Solo Invocation

- *"Frontend Dev, implement the [component] UI"*
- *"Backend Dev, implement the [endpoint] API"*
- *"Tech Lead, review PR #[num]"*
- *"Dev, write unit tests for [module]"*
