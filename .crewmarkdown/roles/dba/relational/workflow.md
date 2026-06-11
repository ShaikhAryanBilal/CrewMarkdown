---
extends: ../workflow.md
role: DBA/Relational
trigger: DB design + performance requirements available.
process:
  - Provisioning — RDBMS instance, storage, HA config, backup
  - Performance — query tuning, index management, vacuum/analyze schedule
  - HA & Replication — configure, monitor lag, failover test
  - Schema Migrations — version-controlled, reviewed, zero-downtime where needed
  - Monitoring — query performance, replication, deadlocks, bloat
done_when: RDBMS provisioned, HA active, performance tuned, replication healthy
needs:
  - what: DB design + schema
    from: Architect
  - what: Performance requirements
    from: Tech Lead
gives:
  - what: RDBMS instance, HA config, performance reports
    to: DevOps, Backend
quality_checklist:
  - Auto-vacuum/auto-analyze configured and monitored
  - Replication lag < threshold for workload
  - No queries with sequential scan on large tables (optimized)
  - Backup test passed within retention period
---

## Trigger
DB design + performance requirements available.

## Instructions
1. Provisioning — select RDBMS, configure instance, storage, HA, backup.
2. Performance — review slow query log, tune indexes, optimize queries, configure auto-vacuum.
3. HA & replication — configure read replicas, failover mechanism, monitor lag.
4. Schema migrations — review migration scripts for lock impact, test rollbacks.
5. Monitoring — set up query performance, replication lag, deadlock, bloat alerts.
6. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/dba-relational.md`
7. Update `.crewmarkdown/state/workflow.json`

## Done When
RDBMS provisioned, HA active, performance tuned, replication healthy.
