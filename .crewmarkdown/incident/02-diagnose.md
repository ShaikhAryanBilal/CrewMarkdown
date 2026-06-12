# Incident: Diagnose

## Need
- Incident declared, severity set, root cause unknown
- Relevant roles assembled (DevOps, SRE, Backend, etc.)

## Instructions

### 1. Gather Data
1. Check recent deployments, config changes, feature flags
2. Review monitoring dashboards (latency, error rate, CPU, memory, DB connections)
3. Examine logs around incident timestamp
4. Check dependency health (APIs, DBs, caches, queues, 3rd parties)

### 2. Form Hypotheses
1. List possible root causes (at least 2-3)
2. Rank by likelihood and impact
3. For each hypothesis, define what evidence would confirm or refute it

### 3. Investigate
1. Test most likely hypothesis first
2. Use runbooks, past incident records, and debugging tools
3. Document findings as you go

### 4. Identify Root Cause
1. Confirm the actual root cause with evidence
2. Determine: code bug, config error, infrastructure failure, dependency outage, or human error
3. Estimate blast radius — which users, services, or data are affected?

## Done
- Root cause identified and confirmed with evidence
- Blast radius assessed
- Ready to mitigate

→ Next: `03-mitigate.md`
