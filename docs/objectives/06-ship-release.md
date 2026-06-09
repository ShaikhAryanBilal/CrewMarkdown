---
layout: default
title: 6. Ship Release
parent: Objectives
nav_order: 6
---

# Objective: Ship Release

Deploy the verified build to production with a rollout plan, monitoring, and rollback procedures.

## Squad

| Role | Responsibility |
|------|---------------|
| DevOps Engineer | Deployment, monitoring, rollback |
| PM | Release plan, stakeholder communication, final approval |

## Schedule

```
PM:     Release Plan → Stakeholder Comms → Go/No-Go
DevOps: Staging Deploy → Prod Deploy → Monitor → Rollback if needed
```

**Sequential**: Staging → Pre-prod checks → Prod deploy → Post-deploy monitoring.

## Dependencies

- **Needs**: QA sign-off, SG3 passed
- **Blocks**: Operate & Learn

## Artifacts

| Role | Produces |
|------|----------|
| PM | Release plan, release notes |
| DevOps | Deployment runbook, deployed build, monitoring dashboards |
| — | SG4 gate status |

## Acceptance

- Deployment plan reviewed and approved
- All pre-deploy checks passed
- Production deployment successful
- Smoke tests pass in production
- Monitoring dashboards green after 15 minutes
- **SG4 gate**: All scans clean, no Critical/High bugs, SBOM verified
- Rollback plan documented and tested

## Security Gate: SG4

All scans clean, no Critical/High bugs, SBOM verified before production traffic.

## Solo Invocation

- *"DevOps, deploy build 42 to staging"*
- *"DevOps, promote staging to production"*
- *"PM, prepare the release notes for v2.1"*
