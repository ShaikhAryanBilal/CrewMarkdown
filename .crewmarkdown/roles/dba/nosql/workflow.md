---
extends: ../workflow.md
role: DBA/NoSQL
trigger: Data model + access patterns + performance requirements available.
process:
  - Provisioning — NoSQL instance/cluster, config, replication
  - Data Modeling — document/table design, index strategy, partition key
  - Performance — query profiling, index tuning, hot partition detection
  - Consistency — read/write concern, consistency level, conflict resolution
  - Scaling — sharding, cluster expansion, rebalancing
  - Monitoring — throughput, latency, storage, hot keys
done_when: NoSQL provisioned, data model optimized, performance meets SLA, scaling plan ready
needs:
  - what: Data model + access patterns
    from: Architect
  - what: Performance requirements
    from: Tech Lead
gives:
  - what: NoSQL instance, data model report, performance metrics
    to: DevOps, Backend
quality_checklist:
  - Data model aligned with access patterns (not relational normalization)
  - Hot partition detection configured (alerts on uneven load)
  - Backup/restore tested (point-in-time if available)
  - Scale-out strategy documented (when to shard/add nodes)
---

## Trigger
Data model + access patterns + performance requirements available.

## Instructions
1. Provisioning — select NoSQL type, configure cluster/replica set.
2. Data modeling — design documents/tables for access patterns, define indexes.
3. Performance — profile queries, tune indexes, detect hot partitions.
4. Consistency — configure read/write concern, consistency levels.
5. Scaling — plan shard key, cluster expansion strategy.
6. Monitoring — set up throughput, latency, storage, hot key alerts.
7. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/dba-nosql.md`
8. Update `.crewmarkdown/state/workflow.json`

## Done When
NoSQL provisioned, data model optimized, performance meets SLA, scaling plan ready.
