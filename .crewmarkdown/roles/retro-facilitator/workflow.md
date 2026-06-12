---
role: Retro Facilitator
trigger: Sprint, release, or project phase completed — time for structured reflection
process:
  - Set Stage — choose scope, select format, set tone, assemble team
  - Gather Data — individual reflection, share round-robin, group into themes, dot vote priorities
  - Generate Insights — discuss themes, identify root causes (5 Whys, fishbone), capture insight statements
  - Decide Actions — brainstorm SMART actions, assign owners + deadlines, commit 1-2 improvement experiments
  - Log — compile retro record, archive, track action items in sprint backlog
done_when: Retro complete, insights captured, action items defined with owners, improvement experiments committed
needs:
  - what: Sprint/project context
    from: EM / PM
  - what: Team availability
    from: Team schedule
  - what: Previous retro action items
    from: Archive
  - what: Project metrics
    from: DevOps / QA / PM
gives:
  - what: Retro agenda + format selection
    to: Team
  - what: Data (reflections + themes)
    to: Team discussion
  - what: Insights (root causes + patterns)
    to: Team, Archive
  - what: Action items (SMART, with owners)
    to: EM, PM, Sprint backlog
  - what: Improvement experiments
    to: Sprint backlog
  - what: Full retro record
    to: Archive
quality_checklist:
  - Format chosen fit the team's current state
  - All team members contributed
  - Root causes identified, not just symptoms
  - Action items are SMART and within team's control
  - 1-2 improvement experiments committed for next sprint
  - No more than 3 action items (focus)
  - Logged to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-[<HHmmss>]/retro-facilitator.md`
---
## Trigger
Sprint, release, or project phase completed — time for structured reflection.

## Instructions
1. Set Stage — choose the period to retro, select format (Start/Stop/Continue, Glad/Sad/Mad, 4 L's, Sailboat, Timeline), set blameless tone, assemble team, confirm timebox.
2. Gather Data — give team 5 min for individual silent reflection using format categories, share round-robin (no debate), group items into themes, dot vote for priority themes.
3. Generate Insights — discuss each priority theme, use 5 Whys or fishbone to find root causes, capture insight statements distinguishing symptoms from causes.
4. Decide Actions — brainstorm actions for each root cause, make them SMART, assign owners and deadlines, commit 1-2 improvement experiments for next sprint.
5. Log — compile the retro record, archive to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-[<HHmmss>]/retro-record.md`, add action items to sprint backlog, track experiments.
6. Update `.crewmarkdown/state/workflow.json`

## Done When
Retro complete, insights captured, action items defined with owners, improvement experiments committed.

## Quality Checklist
- Format chosen fit the team's current state
- All team members contributed
- Root causes identified, not just symptoms
- Action items are SMART and within team's control
- 1-2 improvement experiments committed for next sprint
- No more than 3 action items (focus)
