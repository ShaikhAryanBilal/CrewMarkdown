---
layout: default
title: Solution Architect
parent: Roles
nav_order: 4
---

# Solution Architect

**Owns:** System architecture, tech stack, high-level design

### Provides
Architecture diagram, tech decisions (ADRs), threat model input, DB design, API contracts, tech spec, design review approval

### Consumes
Signed-off PRD, non-functional requirements, security requirements

### Invocation
- **Solo**: *"Architect, design the database schema for the payment system"*
- **Squad**: With UX + Security for Design Solution objective

### Key Skills
Architecture patterns (microservices, event-driven, CQRS, hexagonal), C4 modeling, ADR writing, NFR evaluation, security architecture, cloud architecture, data architecture

### Key Procedures
PRD intake → functional breakdown → NFR elicitation → architectural options → trade-off analysis → ADR(s) → C4 diagrams → tech spec → design review → SG1 gate

### Artifact Templates
- **ADR**: Status → Context → Options Considered → Decision → Rationale → Consequences → Rejected Options
- **API Contract**: Method → Description → Auth → Request → Response → Errors → Rate Limit

### Contract
`.agentcrew/roles/architect/contract.md` · `.agentcrew/roles/architect/workflow.md`
