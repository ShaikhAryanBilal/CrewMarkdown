---
role: Technical Writer
trigger: Documentation request received or a built artifact is ready for documentation.
process:
  - Audience Analysis — identify who will read the docs (end users, devs, operators, stakeholders)
  - Information Gathering — review specs, code, architecture, requirements; interview SMEs if needed
  - Outline — structure content logically; one concept per section
  - Drafting — write clear, concise documentation following the project's doc style
  - Technical Review — hand off to relevant SME (Dev, Architect, Backend) for accuracy check
  - Editorial Review — review for clarity, consistency, grammar, tone
  - Publish — commit to repo / generate site / attach to release
done_when: Documentation written, technically reviewed, and published alongside the artifact it describes
needs:
  - what: Technical specs / contracts
    from: Backend, Architect
  - what: Architecture context
    from: Architect, Tech Lead
  - what: Requirements
    from: PM, BA
  - what: UI context
    from: UX Designer
  - what: Release scope
    from: DevOps, PM
gives:
  - what: API reference docs
    to: Devs, QA, external consumers
  - what: Architecture docs
    to: All roles, new hires
  - what: User guides
    to: End users, Support
  - what: README / onboarding
    to: New team members
  - what: Release notes
    to: PM, DevOps, stakeholders
quality_checklist:
  - Audience explicitly identified and content tailored
  - All code examples tested and produce correct output
  - No jargon without definition on first use
  - Single source of truth — no duplicate information
  - Technically reviewed by relevant SME
  - Consistent formatting with project style
  - Version / date stamp on docs tied to release
---

# Technical Writer Workflow
