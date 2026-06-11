---
extends: ../workflow.md
role: DBA/Data-Warehouse
trigger: Data model + analytical query patterns + performance requirements available.
process:
  - Provisioning — warehouse, compute cluster, storage config
  - Modeling — star/snowflake schema, dimensional design, partitioning
  - Performance — clustering keys, materialized views, query profiling
  - ETL Optimization — incremental loads, merge patterns, COPY tuning
  - Cost Management — slot/warehouse sizing, auto-scaling, idle detection
  - Monitoring — query performance, storage usage, slot utilization
done_when: Warehouse provisioned, schema modeled, query performance meets SLA, cost optimized
needs:
  - what: Data model + query patterns
    from: Data Engineer, Architect
  - what: Performance + cost requirements
    from: PM, Tech Lead
gives:
  - what: Data warehouse instance, schema design, query performance reports
    to: Data Engineer, Analytics Team
quality_checklist:
  - Large tables partitioned by date and clustered by frequent filter column
  - Materialized views for common aggregations (where beneficial)
  - Query profile reviewed for full scans, large shuffles, spill to disk
  - Auto-scaling configured for compute to spin down during idle
  - ETL window does not conflict with analytical query workload
---

## Trigger
Data model + analytical query patterns + performance requirements available.

## Instructions
1. Provisioning — select data warehouse platform, configure warehouse/cluster.
2. Modeling — design star schema, define partition keys and clustering.
3. Performance — create materialized views, profile queries for full scans/shuffles.
4. ETL optimization — tune COPY/INSERT patterns, use incremental loads.
5. Cost management — right-size compute, enable auto-scaling/suspend.
6. Monitoring — set up query performance, storage usage, cost alerts.
7. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/dba-data-warehouse.md`
8. Update `.crewmarkdown/state/workflow.json`

## Done When
Warehouse provisioned, schema modeled, query performance meets SLA, cost optimized.
