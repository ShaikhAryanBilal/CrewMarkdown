# Incident: Resolve & Verify

## Need
- Mitigation applied
- Monitoring period active

## Instructions

### 1. Monitor Post-Mitigation
1. Watch metrics for [SEV1: 30min | SEV2: 15min | SEV3: 5min] after fix
2. Confirm error rate returns to baseline
3. Confirm latency returns to acceptable range
4. Run any relevant smoke tests

### 2. Verify Full Resolution
1. End-to-end test the affected flow
2. Confirm no residual issues or side-effects
3. If mitigation was partial, set expected full-resolve timeline

### 3. Close Incident
1. Incident Commander declares resolved
2. Log: start time, end time, duration, severity, root cause, mitigation steps, any data loss
3. Remove any temporary patches or workarounds if permanent fix deployed
4. Escalate to postmortem if: SEV1/SEV2, repeat incident, or novel root cause

## Done
- Service confirmed healthy
- Monitoring shows baseline
- Incident documented and closed
- Postmortem triggered if needed

→ Next: `05-postmortem.md`
