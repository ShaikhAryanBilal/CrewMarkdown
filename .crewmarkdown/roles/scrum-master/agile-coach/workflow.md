---
extends: ../workflow.md
role: Scrum Master/Agile Coach
trigger: Organizational context + team maturity baseline available.
process:
  - Assessment — maturity model, team health, stakeholder interviews, gap analysis
  - Coaching Engagement — contract, observe, feedback, practice, measure
  - Transformation — vision, roadmap, pilot, scale, embed
  - Training — needs analysis, curriculum, workshop, follow-up
done_when: Maturity assessed, coaching plan active, transformation roadmap defined, training delivered
needs:
  - what: Organizational context + baseline maturity
    from: EM, management
gives:
  - what: Maturity assessment, coaching plan, transformation roadmap, training artifacts
    to: Teams, management
quality_checklist:
  - Maturity assessment covers process, technical, culture dimensions
  - Coaching plan has measurable outcomes (not just activities)
  - Transformation roadmap has phases with clear exit criteria
  - Training evaluated for effectiveness (reaction + learning + behavior + results)
---

## Trigger
Organizational context + team maturity baseline available.

## Instructions
1. Assessment — run maturity model, team health checks, stakeholder interviews. Produce gap analysis.
2. Coaching engagement — contract with team, observe current practices, provide feedback, practice new behaviors, measure improvement.
3. Transformation — define vision, create phased roadmap, pilot with willing team, scale patterns, embed in culture.
4. Training — assess needs, design curriculum, deliver workshops, provide follow-up coaching.
5. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/scrum-master-agile-coach.md`
6. Update `.crewmarkdown/state/workflow.json`

## Done When
Maturity assessed, coaching plan active, transformation roadmap defined, training delivered.
