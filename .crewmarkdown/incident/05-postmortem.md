# Incident: Postmortem

## Need
- Incident resolved, SEV1/SEV2 or repeat incident
- Blameless culture expected

## Instructions

### 1. Assemble Timeline
1. Build chronological timeline of events: detection → diagnosis → mitigation → resolution
2. Include all key timestamps, decisions, and communications

### 2. Identify Root Cause & Contributing Factors
1. Document the root cause (from diagnosis)
2. Identify contributing factors: why wasn't this caught earlier? tests? monitoring? process gaps?

### 3. Document What Went Well & What Didn't
1. What went well in the response
2. What didn't go well — delays, confusion, missing runbooks, tool gaps

### 4. Define Action Items
Each action item needs: owner, deliverable, deadline, and type:
| Type | Example |
|------|---------|
| Preventative | Add test, add monitoring, fix code |
| Detection | Better alert, dashboard, runbook |
| Process | Improve deploy, review, communication |

### 5. Log the Postmortem
1. Write postmortem to `.crewmarkdown/logs/<incident-date>/postmortem.md`
2. Share with the team
3. Track action items in the backlog

## Done
- Timeline documented
- Root cause and contributing factors identified
- Action items with owners and deadlines
- Postmortem shared and action items tracked

→ End of Incident workflow
