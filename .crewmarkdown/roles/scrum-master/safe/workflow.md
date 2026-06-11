---
extends: ../workflow.md
role: Scrum Master/SAFe
trigger: Program vision + PI objectives defined.
process:
  - PI Planning — 2-day event, team breakouts, management review, risk ROAM
  - ART Sync — cross-team coordination, dependency tracking, impediment escalation
  - System Demo — integrated increment demo, stakeholder feedback
  - Inspect & Adapt — metrics review, problem-solving, improvements backlog
  - Metrics — PI predictability, flow, quality, business value
done_when: PI planned, ART synchronized, system demo delivered, I&A completed
needs:
  - what: Program vision + PI objectives
    from: PM / Product Management
gives:
  - what: PI plans, ART sync outputs, system demo, I&A actions
    to: ART, stakeholders
quality_checklist:
  - PI Planning completed in 2-day event
  - All risks ROAM-ed (Resolved, Owned, Accepted, Mitigated)
  - ART sync happens at least weekly
  - System demo shows integrated increment (not silo demos)
  - PI objectives scored at end of PI
---

## Trigger
Program vision + PI objectives defined.

## Instructions
1. PI planning — facilitate 2-day event: context → vision → breakouts → draft → management review → final plan → risks ROAM → confidence vote.
2. ART sync — coordinate cross-team dependencies weekly, track PI objectives.
3. System demo — facilitate integrated system demo at end of PI.
4. Inspect & Adapt — run metrics review and problem-solving workshop.
5. Metrics — track PI predictability (objective scoring), flow, quality.
6. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/scrum-master-safe.md`
7. Update `.crewmarkdown/state/workflow.json`

## Done When
PI planned, ART synchronized, system demo delivered, I&A completed.
