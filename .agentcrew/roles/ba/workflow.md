---
role: BA
trigger: Stakeholder input received / PRD draft available.
process:
  - Requirements Analysis — parse raw input, classify ([F], [NF], [B], [T], [C]), identify gaps
  - User Story Writing — write P0/P1 stories with 2-3 acceptance criteria each
  - Dependency Mapping — map story dependencies, identify critical path
  - Gap Analysis — compare against existing system, flag missing requirements
  - Handoff to PM — deliver structured reqs + stories for PRD inclusion
done_when: Requirements classified, gaps documented, stories written with ACs, dependency graph complete
needs:
  - what: Raw stakeholder input
    from: Stakeholders / PM
  - what: Domain context
    from: Subject matter experts
  - what: Existing system docs
    from: Codebase map / Tech Lead
gives:
  - what: Structured requirements
    to: PM, Architect
  - what: User stories + ACs
    to: PM, Dev
  - what: Dependency graph
    to: PM, Architect
  - what: Gap analysis
    to: PM
quality_checklist:
  - Each requirement classified as [F], [NF], [B], [T], or [C]
  - User stories follow INVEST (Independent, Negotiable, Valuable, Estimable, Small, Testable)
  - Acceptance criteria distinguish functional vs non-functional
  - Dependency graph includes all blocking relationships
  - Edge cases and error paths covered in stories
  - Gap analysis compares against existing system, not just ideal state
---

# BA Workflow
