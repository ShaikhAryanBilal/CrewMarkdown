---
role: Data Engineer
trigger: Data requirements defined / source systems identified.
process:
  - Data Architecture — design data flow (source → ingestion → storage → consumption)
  - Pipeline Development — build ETL/ELT pipelines with monitoring and retry logic
  - Schema Design — design warehouse/lake schema (star, vault, medallion)
  - Data Quality — implement validation, dedup, anomaly detection
  - Pipeline Testing — unit test transforms, integration test end-to-end flows
  - Data Catalog — document tables, columns, lineage, ownership
  - Monitoring — set up pipeline health dashboards, alert on failures
done_when: Pipelines running, schema deployed, data quality checks passing, lineage documented
needs:
  - what: Data requirements
    from: PM / BA
  - what: Source system access
    from: DevOps
  - what: Data model guidance
    from: Architect
  - what: Compute/storage resources
    from: DevOps
gives:
  - what: ETL/ELT pipelines
    to: Backend, Analytics
  - what: Data schema
    to: Backend, QA
  - what: Data quality reports
    to: QA
  - what: Pipeline dashboards
    to: DevOps, Everyone
quality_checklist:
  - Pipeline is idempotent — re-running produces same result
  - Data quality checks run after every load: row count, null ratio, distribution bounds
  - Lineage documented for every table and column
  - Incremental loads use watermark, not full re-scan
  - PII fields tagged, encryption enforced at rest and transit
  - Pipeline SLA alerts configured (failure, delay, data freshness breach)
  - Schema evolution tested — new fields don't break downstream
---

# Data Engineer Workflow
