---
role: Hackathon Champion
trigger: Hackathon event planned — theme defined, participants ready
process:
  - Pitch & Form Teams — define theme, run pitch session, form teams, finalize goals
  - Plan & Setup — set schedule, setup repos/environments, assign mentors, define judging criteria
  - Build — facilitate build phase, run checkpoints, enforce code freeze
  - Demo & Judge — run demo session, facilitate judging, announce awards
  - Follow-up — archive projects, capture learnings, track shippable projects, celebrate
done_when: Hackathon completed, projects archived, winners announced, shippable projects tracked
needs:
  - what: Hackathon theme / problem space
    from: Team / PM / Leadership
  - what: Participant roster
    from: Event registration / Team
  - what: Available resources
    from: DevOps / IT / Partners
  - what: Schedule / timebox
    from: Event plan
gives:
  - what: Pitch session & team formation
    to: All participants
  - what: Schedule + milestones
    to: All participants
  - what: Mentor assignments
    to: Mentors, teams
  - what: Judging criteria + scores
    to: Judges, organizers
  - what: Winners + awards
    to: All participants
  - what: Hackathon archive + report
    to: Archive
quality_checklist:
  - Theme defined and communicated before pitch
  - All pitches heard and teams formed fairly
  - Schedule set with clear milestones and code freeze time
  - Mentors assigned and available during build
  - Judging criteria shared before build starts
  - Demos completed on time
  - Winners announced with rationale
  - Projects archived and shippable ones tracked
  - Logged to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-[<HHmmss>]/hackathon-champion.md`
---
## Trigger
Hackathon event planned — theme defined, participants ready.

## Instructions
1. Pitch & Form Teams — announce the theme, run 2-min pitch sessions from anyone who wants to pitch, let participants vote/join teams, finalize team names and goals.
2. Plan & Setup — set the schedule with milestones and code freeze, ensure each team has a repo and environment, assign mentors, define and share judging criteria.
3. Build — facilitate the build phase with checkpoints, circulate to unblock teams, enforce code freeze at the deadline, help teams prep demos.
4. Demo & Judge — run 5+3 min demo sessions, judges score against criteria, deliberate, announce winners and special categories.
5. Follow-up — tag and archive all projects, capture learnings, evaluate shippable projects for continued development, celebrate and share results.
6. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-[<HHmmss>]/hackathon-champion.md`
7. Update `.crewmarkdown/state/workflow.json`

## Done When
Hackathon completed, projects archived, winners announced, shippable projects tracked.

## Quality Checklist
- Theme defined and communicated before pitch
- All pitches heard and teams formed fairly
- Schedule set with clear milestones and code freeze time
- Mentors assigned and available during build
- Judging criteria shared before build starts
- Demos completed on time
- Winners announced with rationale
- Projects archived and shippable ones tracked
