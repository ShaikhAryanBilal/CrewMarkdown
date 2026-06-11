---
extends: ../workflow.md
role: Backend/Node
trigger: Route contracts + DB design + service interface available.
process:
  - Scaffold — Fastify/Hono app, TypeScript, validation setup, logger
  - Routes — schema-validated routes, controllers, services, repositories
  - Database — Prisma/Drizzle schema, migrations, typed queries
  - Auth — JWT middleware, role guards, refresh token rotation
  - Background Jobs — BullMQ queues, workers, cron jobs
  - Testing — Vitest + Supertest, nock/MSW, testcontainers
done_when: All routes implemented, auth enforced, schema validation active, tests passing
needs:
  - what: Route contracts + DB design
    from: Architect
  - what: Service-layer interface
    from: Tech Lead
  - what: Coding standards
    from: Tech Lead
gives:
  - what: Fastify/Hono/Koa API endpoints
    to: Frontend, QA
  - what: DB schema + migrations
    to: DevOps
  - what: Integration tests
    to: QA
quality_checklist:
  - Every route has JSON Schema or Zod validation on params + body + query
  - Auth middleware on all protected routes — 401 test confirmed
  - N+1 queries eliminated — Prisma/Drizzle query log reviewed
  - BullMQ queues configured with retry and dead-letter handling
  - Pino structured logging with request IDs on every log line
  - Graceful shutdown handler registered (SIGTERM/SIGINT)
  - TypeScript strict mode enabled
---

## Trigger
Route contracts + DB design + service interface available.

## Instructions
1. Scaffold — create Fastify/Hono app with TypeScript. Configure Ajv/Zod schema validation. Set up pino logger.
2. Routes — define routes with input schemas. Layer: route → controller → service → repository.
3. Database — define Prisma/Drizzle schema. Generate migrations. Create typed service layer.
4. Auth — JWT verification middleware on protected routes. Role-based guard. Refresh token rotation.
5. Background jobs — configure BullMQ queue. Define workers. Set up cron scheduling.
6. Testing — Vitest + Supertest for integration tests. nock/MSW for external mocks. testcontainers for DB tests.
7. Graceful shutdown — register SIGTERM/SIGINT handlers for DB disconnect, queue drain.
8. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/backend-node.md`
9. Update `.crewmarkdown/state/workflow.json`

## Done When
All routes implemented, auth enforced, schema validation active, tests passing.
