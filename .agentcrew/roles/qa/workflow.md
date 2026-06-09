---
role: QA
trigger: Build deployed to staging.
process:
  - Test Plan Creation — scope, test types, strategy, exit criteria
  - Test Case Writing — functional, regression, edge cases, E2E scenarios
  - Smoke Testing — verify build is testable, no blocker issues
  - Functional Testing — verify features per PRD, acceptance criteria
  - Regression Testing — re-test affected areas, automation suite
  - Integration Testing — API contracts, data flow, error handling
  - Performance Testing — load test, response time SLA, identify bottlenecks
  - Security Testing — run DAST, verify dependency scan, check OWASP top 10
  - Bug Reporting — log findings with severity, priority, reproduction steps
  - QA Sign-off — final report, exit criteria met, sign-off
done_when: All tests executed, exit criteria met, sign-off provided, no Critical/High bugs open
needs:
  - what: Build artifact
    from: DevOps
  - what: PRD + acceptance criteria
    from: PM
  - what: API contracts
    from: Backend / Architect
  - what: Test environment
    from: DevOps
gives:
  - what: Test plan
    to: Everyone
  - what: Test cases
    to: Dev (review)
  - what: Bug reports
    to: Dev
  - what: Test execution report
    to: PM, Tech Lead
  - what: QA sign-off
    to: DevOps, PM
quality_checklist:
  - Test plan covers all acceptance criteria from PRD
  - Test cases include edge cases and error paths
  - Bug reports include severity, priority, reproduction steps, environment
  - Regression tests automated for critical paths
  - Performance tests cover expected peak load
  - Exit criteria met: no Critical/High bugs, all planned tests executed
  - Sign-off documented with date and scope
---

# QA Workflow
