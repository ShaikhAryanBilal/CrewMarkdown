---
role: Tech Lead
trigger: Architecture approved / sprint started / PR submitted.
process:
  - Coding Standards — define language-specific standards, linter config, type-check rules
  - Code Review — review PRs for correctness, security, style, test coverage
  - Tech Debt Tracking — maintain tech debt register, prioritize with EM
  - ADR Writing — document Architecture Decision Records for significant choices
  - Quality Gate Enforcement — ensure CI gates pass before merge (SG2)
  - Mentoring — guide Dev(s) on implementation approach, patterns
done_when: Standards documented, reviews completed, tech debt tracked, quality gates enforced
needs:
  - what: Architecture diagram
    from: Architect
  - what: Tech spec
    from: Architect
  - what: Sprint tasks
    from: EM
  - what: PR submissions
    from: Dev(s)
gives:
  - what: Coding standards
    to: Dev(s)
  - what: Code review decisions
    to: Dev(s)
  - what: Tech debt register
    to: EM, PM
  - what: ADRs
    to: Everyone
quality_checklist:
  - Coding standards documented and automated in CI (lint + type-check)
  - Every PR reviewed within 4 hours, no PR older than 24h
  - ADRs follow context → options → decision → consequences format
  - Quality gates configured: lint → type-check → test → coverage → SAST → dep scan
  - Tech debt register updated, prioritized with EM
  - No PR merged without CI green and review approval
---

# Tech Lead Workflow
