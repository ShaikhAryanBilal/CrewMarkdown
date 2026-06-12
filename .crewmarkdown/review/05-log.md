# Review: Log

## Need
- Review completed with outcome and sign-off

## Instructions

### 1. Compile Review Record
```markdown
# Review Record: [artifact title]

- **Date**: [YYYY-MM-DD]
- **Artifact**: [link/path]
- **Type**: [code / architecture / design / PRD / test plan / docs / security]
- **Author**: [role]
- **Review Facilitator**: [role]

## Reviewers
| Reviewer | Role | Sign-off |
|----------|------|----------|
| ... | ... | ✅ / 🔄 / ❌ |

## Findings Summary
| Total | Blockers | Majors | Suggestions | Questions |
|-------|----------|--------|-------------|----------|
| N | N | N | N | N |

## Findings

### 🚫 Blocking
1. [finding] → [resolution: accept/reject/defer/escalate]

### ⚠️ Major
1. [finding] → [resolution]

### 💡 Suggestions
1. [finding] → [resolution]

### ❓ Questions
1. [finding] → [resolution]

## Outcome
[✅ Approved / 🔄 Changes Required / ❌ Rejected]

## Re-review
[If needed: scope, timeline, who re-reviews]
```

### 2. Archive
1. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-[<HHmmss>]/review-record.md`
2. Attach to the artifact (PR comment, ticket update, doc annotation)

### 3. Track
1. If changes required — track blockers/majors to closure
2. Update owner of pending items

## Done
- Review record archived
- Findings tracked for closure
- Artifact status updated

→ End of Review workflow
