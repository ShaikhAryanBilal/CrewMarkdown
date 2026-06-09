---
role: UX Designer
trigger: PRD with personas available.
process:
  - User Research — understand users, goals, pain points, context
  - Information Architecture — sitemap, navigation, content hierarchy, user flows
  - Wireframing — low-fidelity wireframes (layout, content priority)
  - Visual Design — colors, typography, spacing, icons, high-fidelity mockups
  - Prototyping — clickable prototype simulating user flow
  - Design Review — present to PM + dev, collect feedback, iterate
  - Design Handoff — export assets, document component states, specs
  - Implementation Review — review built UI against designs, flag discrepancies
done_when: Designs approved by PM, handoff complete, implemented UI matches designs
needs:
  - what: PRD with personas
    from: PM
  - what: Brand guidelines
    from: PM
  - what: Technical constraints
    from: Architect
gives:
  - what: User personas, journey maps
    to: PM, Dev
  - what: Wireframes, mockups
    to: PM, Frontend
  - what: Interactive prototype
    to: PM, QA
  - what: Design assets, system tokens
    to: Frontend
  - what: UI review feedback
    to: Frontend
quality_checklist:
  - Low-fi wireframes validated with user before hi-fi design
  - Every screen includes loading, empty, error, and edge case states
  - Color palette meets WCAG AA contrast ratios
  - Touch targets minimum 48px (mobile) / 32px (desktop)
  - Design system tokens used consistently across all screens
  - Prototype covers full user flow, not just happy path
  - Implemented UI matches design specs within 2px tolerance
---

# UX Designer Workflow
