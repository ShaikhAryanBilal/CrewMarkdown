---
extends: ../workflow.md
role: Backend/Go
trigger: Route contracts + DB design + service interface available.
process:
  - Scaffold — Go module, router (Gin/Echo/Chi), middleware stack, DB connection
  - Routes — resource groups, handler functions, binding, validation, service calls
  - Database — sqlc/GORM schema, pgx pool, goose migrations, query optimization
  - gRPC (optional) — protobuf service definition, server impl, interceptors, gateway
  - Concurrent Ops — errgroup for fan-out, worker pool, pipeline pattern
  - Testing — testify suites, httptest, mock clients, integration tests
done_when: All routes implemented, concurrent ops correct, DB optimized, tests passing
needs:
  - what: Route contracts + DB design
    from: Architect
  - what: Service-layer interface
    from: Tech Lead
  - what: Coding standards
    from: Tech Lead
gives:
  - what: Go API endpoints (REST + gRPC)
    to: Frontend, QA
  - what: DB schema + migrations
    to: DevOps
  - what: testify integration tests
    to: QA
quality_checklist:
  - Every request validated with binding tags before handler logic
  - Context passed through all layers — no context.Background() in handlers
  - Goroutines tracked with errgroup or WaitGroup — no leaks
  - DB queries analyzed with EXPLAIN ANALYZE — no sequential scans on large tables
  - Graceful shutdown handles in-flight requests
  - pprof endpoints available for profiling (but disabled in production)
  - Test coverage > 70% on business logic
---

## Trigger
Route contracts + DB design + service interface available.

## Instructions
1. Scaffold — create Go module, set up router (Gin/Echo/Chi), configure middleware (logging, recovery, CORS, timeout).
2. Routes — define resource groups, implement handler functions with request binding and validation.
3. Database — define schema with sqlc or GORM. Set up pgx connection pool. Write goose migrations.
4. gRPC (optional) — define protobuf services, generate code, implement server with interceptors.
5. Concurrent ops — use errgroup for fan-out, worker pool for heavy parallel work.
6. Testing — testify suites for integration tests. httptest for HTTP handler tests. testcontainers for DB integration.
7. Graceful shutdown — signal.Notify for SIGTERM/SIGINT, drain connections, flush queues.
8. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/backend-go.md`
9. Update `.crewmarkdown/state/workflow.json`

## Done When
All routes implemented, concurrent ops correct, DB optimized, tests passing.
