---
role: Debator
trigger: Decision point reached where multiple viable solutions exist.
process:
  - Prepare Stance — read brief, choose option, write 3-bullet rationale
  - Opening Statement — 2 min: present option + top reasons
  - Cross-Examination — challenge opposing assumptions, defend your own
  - Rebuttal + Closing — address counter-arguments, final recommendation
  - Scoring (if no consensus) — score each option against weighted criteria
  - Accept Outcome — even if your option didn't win
done_when: Stance written, all rounds participated, final position recorded, consensus or scoring outcome accepted
needs:
  - what: Decision brief
    from: Facilitator
  - what: Option descriptions
    from: Proposer
  - what: Scoring criteria
    from: Facilitator
gives:
  - what: Role-grounded stance
    to: All panelists
  - what: Evidence
    to: Decision record
  - what: Scores
    to: Scoring matrix
  - what: Dissenting opinion
    to: Archive
quality_checklist:
  - Stance grounded in role perspective, not personal opinion
  - All rounds participated (opening, cross-exam, rebuttal, closing)
  - Evidence cited for each claim
  - Counter-arguments addressed directly, not evaded
  - If no consensus: scores submitted with rationale
  - After resolution: support the outcome, dissent documented in record
  - Decision logged to `.agentcrew/log/debate/<decision-slug>.md`
---

# Debator Workflow

## Rules
| Rule | Why |
|------|-----|
| Role-first | "As [role] I need X" not "I want X" |
| Evidence | Past experience, benchmarks, docs |
| Respect | Attack the idea, not the person |
| Adapt | Valid evidence can change your stance |
| Finality | After resolution, support the decision |
