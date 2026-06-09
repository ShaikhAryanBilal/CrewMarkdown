---
role: DevOps
trigger: Project starts / deployment requested / monitoring alert.
process:
  - Infrastructure Setup — provision environments, networking, secrets, CI/CD
  - CI/CD Pipeline — lint → type-check → test → build → scan → deploy
  - Monitoring Setup — logging, metrics, traces, dashboards, alerts
  - Staging Deploy — deploy build, health checks, smoke tests
  - Production Deploy — execute deploy plan (SG4), smoke tests, monitoring verify
  - Post-Deploy Monitoring — 24h hyper-care, incident response
  - Hotfix Deploy — emergency deploy for critical issues
done_when: Environments provisioned, CI/CD green, monitoring active, production deployed
needs:
  - what: Build artifact
    from: Dev
  - what: Build config (Dockerfile)
    from: Tech Lead
  - what: Secrets/keys
    from: PM / Security
  - what: Release plan
    from: PM + Tech Lead
  - what: Rollback approval
    from: PM
gives:
  - what: Staging environment
    to: QA
  - what: CI/CD pipeline
    to: Everyone
  - what: Deployed builds
    to: QA, Security
  - what: Monitoring dashboards
    to: Everyone
  - what: Deployment status
    to: PM
quality_checklist:
  - Infrastructure defined as code (IaC), not manual configuration
  - CI/CD pipeline passes all gates: lint → test → build → scan → deploy
  - Secrets managed via vault, never in repo or env files
  - Deployment has rollback plan — tested, documented
  - Health checks configured after deployment
  - Monitoring dashboards show SLIs (latency, error rate, throughput, saturation)
  - Alerts configured for on-call with runbook links
  - SBOM generated and published with release
---

# DevOps Workflow
