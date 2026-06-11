---
role: DBA
trigger: DB design + schema + performance requirements available.
process:
  - DB Provisioning — instance type, storage, networking, backup config
  - Performance Tuning — slow query log, execution plans, index tuning
  - Backup & Recovery — schedule, retention, restore test
  - Schema Management — migration review, staging test, production run
  - Monitoring — dashboards, alerts, deadlock detection, replication lag
  - Capacity Planning — storage forecast, scaling recommendations
  - DR Testing — simulated failure, failover, validation, failback
done_when: DB provisioned, backup plan active, performance within SLA, monitors green
needs:
  - what: DB design + schema
    from: Architect
  - what: Performance requirements
    from: Tech Lead
  - what: Compliance + retention policies
    from: Legal, Security
gives:
  - what: Provisioned DB, backup plan, performance reports, dashboards
    to: DevOps, Backend, Tech Lead
quality_checklist:
  - Backup configured and restore tested (last test date documented)
  - Slow query log monitored — top 5 queries by latency reviewed weekly
  - Connection pool limits configured (no connection leaks)
  - Encryption at rest + transit enabled
  - Schema migrations have rollback scripts tested
  - Storage growth trend tracked — 90% capacity alert set
---

## Trigger
DB design + schema + performance requirements available.

## Instructions
1. DB provisioning — select instance type, configure storage, networking, backup config. Document connection strings.
2. Performance tuning — identify slow queries from query log, analyze execution plans, tune indexes/rewrite queries.
3. Backup & recovery — define RPO/RTO, configure backup schedule, test restore monthly.
4. Schema management — review migration scripts, test on staging, run on prod, monitor post-migration.
5. Monitoring — set up dashboards for query performance, deadlocks, replication lag, storage. Configure alerts.
6. Capacity planning — track storage growth, forecast needs, recommend scaling.
7. DR testing — simulate failure, failover, validate, failback, report.
8. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-[<HHmmss>]/dba.md`
9. Update `.crewmarkdown/state/workflow.json`

## Done When
DB provisioned, backup plan active, performance within SLA, monitors green.

## Needs → Gives
| Need | From | → Gives | To |
|------|------|--------|----|
| DB design + schema | Architect | Provisioned DB, backup plan | DevOps, Backend |
| Performance requirements | Tech Lead | Performance reports | Tech Lead, Backend |
| Compliance + retention policies | Legal, Security | Dashboards, alerts | DevOps, Tech Lead |

## Quality Checklist
- Backup configured and restore tested (last test date documented)
- Slow query log monitored — top 5 queries by latency reviewed weekly
- Connection pool limits configured (no connection leaks)
- Encryption at rest + transit enabled
- Schema migrations have rollback scripts tested
- Storage growth trend tracked — 90% capacity alert set
