---
extends: ../workflow.md
role: DBA/Cloud
trigger: DB spec + cloud platform selection + performance requirements available.
process:
  - Provisioning — create managed DB instance, configure HA, backup, monitoring
  - Scaling — right-size instance, auto-scaling, read replicas
  - Cost Management — reserved instances, storage tiering, idle detection
  - Migration — on-prem → cloud, cross-cloud, zero-downtime
  - Monitoring — cloud-native metrics, Performance Insights, query store
done_when: Managed DB provisioned, HA configured, cost optimized, monitoring active
needs:
  - what: DB spec + cloud platform
    from: Architect, DevOps
  - what: Performance + compliance requirements
    from: Tech Lead, Legal
gives:
  - what: Cloud DB instance, HA config, cost reports
    to: DevOps, PM
quality_checklist:
  - Multi-AZ / zone-redundant HA configured
  - Automated backup retention set per policy
  - No public IP access — private networking only
  - IAM-based auth enabled where supported
  - Cost tags applied for chargeback
---

## Trigger
DB spec + cloud platform selection + performance requirements available.

## Instructions
1. Provisioning — create managed DB instance, configure HA, backup retention, monitoring.
2. Scaling — monitor utilization, right-size, configure auto-scaling.
3. Cost management — apply reserved instances, storage tiering, detect idle resources.
4. Migration — plan and execute on-prem to cloud or cross-cloud migration.
5. Monitoring — enable Performance Insights, configure alerts.
6. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/dba-cloud.md`
7. Update `.crewmarkdown/state/workflow.json`

## Done When
Managed DB provisioned, HA configured, cost optimized, monitoring active.
