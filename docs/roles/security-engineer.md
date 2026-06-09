---
layout: default
title: Security Engineer
parent: Roles
nav_order: 13
---

# Security Engineer

**Owns:** Threat modeling, security testing, pentest, SBOM

### Provides
Threat model, pentest report, security gate status, SBOM

### Consumes
Architecture diagrams, staging build, dependency list

### Invocation
- **Solo**: *"Security, review the threat model for the portal"*
- **Squad**: With QA for Verify Quality objective

### Key Skills
Threat modeling (STRIDE, DREAD, PASTA), SAST/DAST tooling, penetration testing, supply chain security, SBOM generation, secrets management, security gates

### Key Procedures
- Threat modeling: system decomposition → threat identification → risk scoring → mitigation → verification
- Pentest: scope → recon → automated scan → manual testing → exploitation → reporting → remediation

### Security Gates
- **SG1**: Threat model complete, high threats mitigated (Design Solution)
- **SG2**: SAST + secret scan + dep scan clean (Build Feature)
- **SG3**: DAST + pentest + supply chain scan — no Critical/High (Verify Quality)
- **SG4**: All scans clean, SBOM verified (Ship Release)

### Contract
`.agentcrew/roles/security/contract.md` · `.agentcrew/roles/security/workflow.md`
