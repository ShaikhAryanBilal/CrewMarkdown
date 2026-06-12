# Incident: Detect & Triage

## Need
- Production issue reported (alert, user report, monitoring)
- Incident Commander assigned

## Instructions

### 1. Detect
1. Identify the signal: alert threshold breached, user complaint, monitoring dashboard anomaly, or manual observation
2. Capture raw details: time, service, symptom, severity-indicating factors

### 2. Classify Severity
| Severity | Definition | Response | SLA |
|----------|------------|----------|-----|
| SEV1 | Critical — users blocked, data loss, revenue impacted | Full incident response, all hands | 15min response |
| SEV2 | Major — degraded experience, partial outage | Incident team | 30min response |
| SEV3 | Minor — cosmetic, edge case, low-impact bug | Normal ticket | Next business day |
| SEV4 | Trivial — question, docs, nice-to-have | Regular backlog | Per sprint |

### 3. Declare Incident
1. Incident Commander declares: `[SEVX] [service] — [brief symptom]`
2. Log timestamp of declaration
3. Notify stakeholders per severity protocol
4. Open incident channel (Slack, Teams, etc.)

### 4. Initial Assessment
1. Is this a known issue with a known fix?
2. If yes → proceed to Mitigate (03) directly
3. If no → proceed to Diagnose (02)
4. Set expected next-update timer (SEV1: 15min, SEV2: 30min)

## Done
- Incident detected and classified
- Severity declared with stakeholders notified
- Known fix? → skip to mitigate. Unknown? → proceed to diagnose

→ Next: `02-diagnose.md`
