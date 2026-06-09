---
layout: default
title: DevOps Engineer
parent: Roles
nav_order: 14
---

# DevOps Engineer

**Owns:** Infrastructure, CI/CD, deployment, monitoring

### Provides
Environments, CI/CD pipelines, deployed builds, monitoring dashboards, deployment status, infrastructure

### Consumes
Tech stack decisions, build config, build artifact, secrets, release plan, rollback approval

### Invocation
- **Solo**: *"DevOps, set up the CI/CD pipeline for this project"*
- **Squad**: With PM for Ship Release objective

### Key Skills
CI/CD (GitHub Actions, GitLab CI, ArgoCD), containerization (Docker), orchestration (Kubernetes, Helm), IaC (Terraform, Pulumi), cloud platforms (AWS, Azure, GCP), monitoring (Prometheus, Grafana, Datadog), deployment strategies (blue/green, canary, rolling), SRE practices (SLOs, error budgets)

### Key Procedures
- CI/CD: commit → lint → test → build image → scan → push → deploy staging → integration tests → deploy prod → smoke test
- Deployment: pre-deploy checks → run migration → deploy → health check → smoke test → monitor → rollback if needed

### Artifact Templates
- **Deployment Plan**: Version → Date → Strategy → Pre-deploy → Steps → Health Check → Smoke Test → Rollback → Monitoring
- **Runbook**: Description → Health Endpoint → Logs → Metrics → Common Issues → Escalation

### Contract
`.agentcrew/roles/devops/contract.md` · `.agentcrew/roles/devops/workflow.md`
