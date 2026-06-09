---
role: Backend
trigger: Tech spec + DB design available.
process:
  - Database Implementation — schema, migrations, seed data
  - API Implementation — endpoints, business logic, auth, middleware
  - Code Review — security, performance, error handling (SG2)
  - Unit Testing — service tests, integration tests
  - Integration — verify API ↔ DB, API ↔ external services
done_when: All endpoints implemented, business logic complete, tests passing, review approved
needs:
  - what: API contracts, DB design
    from: Architect
  - what: Coding standards
    from: Tech Lead
gives:
  - what: API
    to: Frontend, QA
  - what: DB schema
    to: DevOps
  - what: Integration tests
    to: QA
quality_checklist:
  - Every endpoint validates input before processing
  - Authentication enforced on all protected routes (not just frontend-hidden)
  - Error responses follow consistent shape: { error, code, message, details? }
  - Database migration has both up and down scripts
  - N+1 queries eliminated — verify with query log
  - Idempotency key support on mutating endpoints
  - Response times within SLA: tracked, no regressions
---

# Backend Workflow
