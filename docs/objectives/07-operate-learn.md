---
layout: default
title: 7. Operate & Learn
parent: Objectives
nav_order: 7
---

# Objective: Operate & Learn

Monitor the production system, respond to incidents, gather feedback, and plan improvements.

## Squad

| Role | Responsibility |
|------|---------------|
| DevOps Engineer | Monitoring, incident response, uptime |
| EM | Retrospectives, process improvement |
| PM | Feedback collection, feature requests |
| ML Engineer | Model monitoring, drift detection (if applicable) |
| Data Engineer | Data quality monitoring (if applicable) |

## Schedule

```
DevOps: Monitor → Incident Response → Postmortem → Runbook Updates
EM:     Feedback Loop → Retro → Process Improvements
PM:     User Feedback → Backlog updates → Feature Requests
```

**Parallel**: Monitoring, feedback, and retro run continuously.

## Dependencies

- **Needs**: Production deployment (from Ship Release)

## Artifacts

| Role | Produces |
|------|----------|
| DevOps | Monitoring dashboards, incident reports, runbooks |
| EM | Retro reports, velocity metrics, process improvements |
| PM | User feedback summary, feature requests |
| ML Engineer | Drift reports, model retrain recommendations |

## Acceptance

- Monitoring dashboards operational with alerting configured
- Incident response runbook documented and tested
- Postmortem process established
- Feedback loop from users operational
- Backlog updated with insights from production

## Solo Invocation

- *"DevOps, set up monitoring for the payment service"*
- *"DevOps, investigate the production alert"*
- *"EM, run a retro for the last sprint"*
- *"ML Engineer, check for model drift on the recommendation engine"*
