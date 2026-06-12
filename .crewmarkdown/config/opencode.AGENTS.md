# CrewMarkdown — Universal Agent Entry Point

## What This Is

CrewMarkdown is a **crew of 42+ autonomous AI roles** spanning engineering, business, creative, and operations — each with a contract and workflow.
Roles work solo or in squads toward shared objectives. Full lifecycle.

## For opencode

Auto-detected via `~/.agents/skills/CrewMarkdown/SKILL.md`.
Trigger phrases: "CrewMarkdown", "workflow", "follow the process", `/CrewMarkdown`.

## For Cursor / Claude Code / Cline / Copilot / Other AI Tools

Read `.crewmarkdown/00-objectives.md` — it contains the master objective routing table.
Read `.crewmarkdown/00-team.md` for role invocation patterns.
Role contracts are in `.crewmarkdown/roles/<role>/contract.md`.

## How Any AI Agent Should Behave

1. User makes a request (engineering, business, creative, or operational)
2. **Codebase Map:** If `codebase-map.md` exists at root, read it first
3. **Custom Instructions:** Check `.crewmarkdown/custom/<phase>.md` for project-specific overrides
4. Consult `.crewmarkdown/00-objectives.md` → find matching objective
5. Read objective file → know goal, squad, artifacts, acceptance
6. Read `.crewmarkdown/00-team.md` → determine invocation mode (solo/squad/orchestrate)
7. Load relevant role contract.md + workflow.md
8. Load old step files as procedure references (if needed)
9. Roles produce artifacts
10. **Log:** Write `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-[<HHmmss>]/<role>.md` (derive `<chat-slug>` from request text)
11. **State:** Update `.crewmarkdown/state/workflow.json` (achieved objectives, artifacts)
12. Verify acceptance criteria

**Core rule:** every request maps to an objective (or solo role call). No match = ask "Which objective are we pursuing?"

## Quick Reference

| Request | Start Here |
|---------|-----------|
| "Who does what?" / "Role definition" | `.crewmarkdown/00-roles.md` |
| "Build a feature" / "Full lifecycle" | `.crewmarkdown/00-objectives.md` (orchestrate) |
| "Define requirements" / "Write PRD" | Objective: Clarify Vision (`.crewmarkdown/objectives/01-clarify-vision.md`) |
| "Design system / architecture" | Objective: Design Solution (`.crewmarkdown/objectives/02-design-solution.md`) |
| "Plan sprint / break down work" | Objective: Plan Work (`.crewmarkdown/objectives/03-plan-work.md`) |
| "Implement X / Write code" | Objective: Build Feature (`.crewmarkdown/objectives/04-build-feature.md`) |
| "Write API docs / user guides" | Objective: Build Feature or Execute Campaign |
| "Test this / QA sign-off" | Objective: Verify Quality (`.crewmarkdown/objectives/05-verify-quality.md`) |
| "Deploy / release" | Objective: Ship Release (`.crewmarkdown/objectives/06-ship-release.md`) |
| "Monitor / hotfix" | Objective: Operate & Learn (`.crewmarkdown/objectives/07-operate-learn.md`) |
| "Meeting / brainstorm" | Objective: Conduct Meeting (`.crewmarkdown/objectives/08-conduct-meeting.md`) |
| "Marketing campaign / GTM" | Objective: Execute Campaign (`.crewmarkdown/objectives/09-execute-campaign.md`) |
| "Hiring / people ops" | Objective: Execute People Ops (`.crewmarkdown/objectives/10-people-ops.md`) |
| "Budget / financial review" | Objective: Plan Work (`.crewmarkdown/objectives/03-plan-work.md`) |
| "Review this code / design" | `.crewmarkdown/roles/architect/workflow.md` |
| "Bug found" | `.crewmarkdown/roles/qa/workflow.md` + `procedures/04-qa/06-bug-tracking.md` |
| /meeting [topic] | Meeting mode → dynamic roles |
| /incident [signal] | Incident mode → Incident Commander |
| /review [artifact] | Review mode → Review Facilitator |
| /interview [topic] | Interview mode → Interviewer |
| /negotiate [issue] | Negotiation mode → Mediator |
| /retro [period] | Retrospective mode → Retro Facilitator |
| /hackathon [theme] | Hackathon mode → Hackathon Champion |
| /onboard [role] | Onboarding mode → Onboarding Buddy |
| Solo role: "[Role], do X" | `.crewmarkdown/roles/<role>/contract.md` + `.crewmarkdown/roles/<role>/workflow.md` |
| Everything else | `.crewmarkdown/00-objectives.md` routing table |

## Gamified Display

Show the Retro RPG party screen when starting work on an objective or assembling a squad.
This provides visual feedback that the AI team is working.

**PowerShell (Windows):**
```
.\.crewmarkdown\animations\show-party.ps1 -Objective "Objective Name" -Squad PM,Architect,Backend -Timeout 5
```

**Bash (Linux/macOS):**
```
.crewmarkdown/animations/show-party.sh -o "Objective Name" -s "PM,Architect,Backend" -t 5
```

**Flags:**
- `-Timeout` / `-t`: seconds to display (0 = infinite, Ctrl+C to exit)
- `-NoAnim` / `-n`: static screen, no animation
- `-Ascii` / `-a`: ASCII-only mode (no emoji)

Call this script before starting objective execution. Use 5-second timeout for quick feedback,
or omit timeout during long-running work.
