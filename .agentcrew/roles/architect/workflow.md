---
role: Architect
trigger: Signed-off PRD available.
process:
  - System Architecture — design components, trust boundaries, tech stack
  - Technical Specification — data models, API contracts, error handling
  - Database Design — schema, migrations, indexing
  - API Design — endpoints, auth, rate limits
  - Threat Modeling — STRIDE per component, risk table, mitigations (SG1)
  - Design Review — review all designs, approve or request changes
done_when: Architecture signed off, tech spec complete, design review approved
needs:
  - what: PRD
    from: PM
  - what: NF requirements
    from: PM
  - what: Security requirements
    from: Security
gives:
  - what: Architecture diagram
    to: Dev, DevOps, QA
  - what: Tech spec, DB design
    to: Dev
  - what: API contracts
    to: Frontend, Backend
  - what: Threat model
    to: Security
quality_checklist:
  - Architecture diagram shows all components, data flows, trust boundaries
  - Tech stack selected with documented rationale (not just preference)
  - DB schema normalized to 3NF (or justified denormalization)
  - API contracts versioned and include error responses
  - Threat model covers all trust boundaries with STRIDE
  - Design review approved, all concerns resolved
  - ADR written for each significant architectural decision
---

# Architect Workflow
