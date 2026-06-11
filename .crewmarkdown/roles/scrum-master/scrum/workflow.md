---
extends: ../workflow.md
role: Scrum Master/Scrum
trigger: Sprint goal + refined backlog available.
process:
  - Sprint Planning — capacity check, sprint goal, team commits
  - Daily Standup — 3 questions, impediments, adjust plan
  - Refinement — split stories, re-estimate, re-prioritize
  - Sprint Review — demo, stakeholder feedback, backlog adjustments
  - Retro — metrics + mood, action items, experiment
  - Burndown — track actual vs ideal, flag scope changes
done_when: All ceremonies held, sprint goal met (or renegotiated), retro actions assigned
needs:
  - what: Sprint goal + refined backlog
    from: PM
gives:
  - what: Ceremony outputs, burndown, retro actions
    to: Team
quality_checklist:
  - Sprint goal is a business outcome (not feature list)
  - All stories estimated in story points (not hours)
  - Burndown shows actual vs ideal — scope changes visible
  - Retro action items tracked to completion
---

## Trigger
Sprint goal + refined backlog available.

## Instructions
1. Sprint planning — facilitate capacity check, ensure backlog refined, help team commit to sprint goal.
2. Daily standup — 15 min, round-robin, capture impediments.
3. Backlog refinement — split large stories, re-estimate, re-prioritize with PO.
4. Sprint review — demo working increment, collect stakeholder feedback.
5. Retro — use data-driven approach (metrics + mood check), produce action items.
6. Burndown management — track daily, flag scope creep.
7. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/scrum-master-scrum.md`
8. Update `.crewmarkdown/state/workflow.json`

## Done When
All ceremonies held, sprint goal met (or renegotiated), retro actions assigned.
