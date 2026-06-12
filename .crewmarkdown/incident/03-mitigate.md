# Incident: Mitigate

## Need
- Root cause identified
- Mitigation plan ready

## Instructions

### 1. Choose Mitigation Strategy
| Strategy | When | Risk |
|----------|------|------|
| Rollback | Recent deploy caused it | Fast, but lose recent changes |
| Feature flag disable | Bad feature behind flag | Fast, zero deploy |
| Hotfix | Code bug with known fix | Needs deploy, CI/CD time |
| Scale up/out | Capacity issue | Temporary, costs more |
| Failover | Region/AZ failure | Complex, tested in drills |
| Workaround | No immediate fix | Buys time for proper fix |

### 2. Execute Mitigation
1. Get approval from Incident Commander before executing
2. Document each step taken (what, when, by whom)
3. Verify the fix works — check monitoring, test end-to-end

### 3. Communicate
1. Update stakeholders on mitigation status
2. Note any data loss or user impact incurred
3. Estimate time to full resolution if partial fix

## Done
- Mitigation applied and verified
- Stakeholders updated
- Service restored or workaround in place

→ Next: `04-resolve.md`
