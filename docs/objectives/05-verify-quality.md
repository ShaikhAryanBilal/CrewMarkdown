---
layout: default
title: 5. Verify Quality
parent: Objectives
nav_order: 5
---

# Objective: Verify Quality

Validate that the built feature meets quality standards through testing, security validation, and acceptance verification.

## Squad

| Role | Responsibility |
|------|---------------|
| QA Engineer | Test planning, execution, bug tracking, sign-off |
| Security Engineer | DAST, pentest, supply chain scan |
| Dev(s) | Bug fixes |
| ML Engineer | Model evaluation (if applicable) |

## Schedule

```
QA:  Test Plan → Test Cases → Functional → Regression → UAT → Sign-off
Security:                          DAST → Pentest → Supply Chain Scan → SG3
Dev(s):  Bug fixes ←─────────────────────────────────────────────────
```

**Sequential**: Test Plan → Test execution → Bug fixes → Re-test → Sign-off.
**Parallel**: QA and Security can work simultaneously.

## Dependencies

- **Needs**: Build artifact, deployed to staging
- **Blocks**: Ship Release

## Artifacts

| Role | Produces |
|------|----------|
| QA | Test plan, test cases, bug reports, execution report |
| QA | QA sign-off |
| Security | Pentest report, supply chain scan, SG3 gate status |

## Acceptance

- All planned tests executed
- No Critical or High severity bugs open
- SG3 gate: DAST + pentest + supply chain scan — no Critical/High findings
- UAT signed off by PM/stakeholders
- QA sign-off granted

## Security Gate: SG3

DAST + pentest + supply chain scan — no Critical or High findings allowed.

## Solo Invocation

- *"QA, create test cases for the checkout flow"*
- *"QA, run regression on build 42"*
- *"Security, run a pentest on the staging environment"*
