---
layout: default
title: QA Engineer
parent: Roles
nav_order: 12
---

# QA Engineer

**Owns:** Test planning, execution, bug tracking, sign-off

### Provides
Test plan, test cases, bug reports, test execution report, QA sign-off

### Consumes
Build artifact, PRD + acceptance criteria, API contracts, test environment

### Invocation
- **Solo**: *"QA, create test cases for the checkout flow"*
- **Squad**: With Security for Verify Quality objective

### Key Skills
Test planning (risk-based), test design (equivalence partitioning, boundary analysis), automation (Playwright, Cypress, Selenium), types of testing (functional, regression, perf, security, UAT), metrics, CI/CD integration

### Key Procedures
- Test cycle: smoke → functional → regression → integration → performance → security → UAT → sign-off
- Bug lifecycle: new → triaged → assigned → fixed → verified → closed → regression-checked

### Artifact Templates
- **Bug Report**: ID → Severity → Priority → Environment → Steps → Expected → Actual → Evidence
- **Test Plan**: Scope → Out of Scope → Test Types → Strategy → Environment → Exit Criteria

### Contract
`.agentcrew/roles/qa/contract.md` · `.agentcrew/roles/qa/workflow.md`
