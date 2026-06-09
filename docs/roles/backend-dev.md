---
layout: default
title: Backend Developer
parent: Roles
nav_order: 7
---

# Backend Developer

**Owns:** API, services, data layer, business logic

### Provides
API endpoints, business logic, DB migrations, integration tests

### Consumes
API contracts, DB design, tech spec, coding standards

### Invocation
- **Solo**: *"Backend Dev, implement the order API"*
- **Squad**: With Frontend for Build Feature objective

### Key Skills
API design (REST, GraphQL, gRPC), database design, auth (JWT, OAuth2, RBAC), caching strategies, error handling, testing, security, API documentation (OpenAPI/Swagger)

### Key Procedures
- API endpoint: validate input → authenticate → authorize → business logic → external calls → format response → log → return
- DB migration: create script → test rollback → run staging → validate → run prod → verify
- Performance: N+1 check → index review → pool sizing → response time budget → cache strategy

### Artifact Templates
- **API Endpoint**: Method → Auth → Body → Response → Errors → Idempotent → Caching
- **Migration Script**: Up/Down statements

### Contract
`.agentcrew/roles/backend/contract.md` · `.agentcrew/roles/backend/workflow.md`
