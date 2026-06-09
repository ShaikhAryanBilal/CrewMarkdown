---
role: Engineering Manager
trigger: Sprint start / new feature cycle / feedback collected.
process:
  - Capacity Planning — calculate team hours available, account for ceremonies, PTO
  - Task Breakdown — decompose features into tasks (≤1 dev-day each), assign sizing
  - Sprint Planning — commit to sprint scope, align with PM on priorities
  - Sprint Execution — monitor progress, unblock team, shield from interruptions
  - Retrospective — facilitate blame-free retro, collect Went Well/Went Wrong/To Improve
  - Process Improvement — turn retro items into actionable improvements, track next sprint
done_when: Sprint committed, tasks sized, retro held, improvement items tracked
needs:
  - what: Prioritized backlog
    from: PM
  - what: Task estimates
    from: Tech Lead
  - what: Team capacity
    from: Dev(s)
  - what: Velocity
    from: DevOps (sprint metrics)
gives:
  - what: Sprint plan
    to: Dev(s), PM
  - what: Capacity allocation
    to: Dev(s)
  - what: Retro report
    to: Everyone
  - what: Improvement backlog
    to: PM, Tech Lead
quality_checklist:
  - Sprint planned within team capacity (60-70% planned, 30-40% buffer)
  - Tasks sized using consistent method (story points or t-shirt sizes)
  - Every task has clear DOD (Definition of Done) before sprint starts
  - Daily standup happened, blockers documented and escalated
  - Retro held, action items assigned with owners and deadlines
  - Velocity trend tracked — not compared with other teams
  - Team morale checked — one-on-ones scheduled, not just group ceremonies
---

# Engineering Manager Workflow
