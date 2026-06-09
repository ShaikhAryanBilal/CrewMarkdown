---
role: PM
trigger: Stakeholder request / new sprint.
process:
  - Requirements Intake — parse raw input, extract requirements, clarify gaps
  - PRD Writing — write PRD with problem, personas, scope, success metrics
  - Requirements Sign-off — get stakeholder sign-off, freeze scope
  - Release Planning — prioritization, stakeholder comms
  - Retrospective — collect feedback, backlog grooming
  - UAT — coordinate user acceptance testing, sign-off
done_when: PRD signed off, scope frozen, release approved
needs:
  - what: Raw stakeholder input
    from: Stakeholders
  - what: Effort estimates
    from: Tech Lead
  - what: UAT feedback
    from: QA, Users
gives:
  - what: PRD
    to: Architect, Dev, QA
  - what: Priorities, scope decisions
    to: Everyone
  - what: Release notes
    to: Stakeholders
  - what: Sign-off
    to: DevOps
quality_checklist:
  - PRD includes problem, personas, success metrics, out-of-scope
  - Every user story has acceptance criteria (Given/When/Then)
  - Effort estimates collected from Tech Lead before committing
  - Stakeholder sign-off documented
  - Release plan shared with DevOps
  - Retro held at sprint end, action items tracked
---

# PM Workflow
