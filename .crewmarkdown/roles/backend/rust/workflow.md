---
extends: ../workflow.md
role: Backend/Rust
trigger: Route contracts + DB design + service interface available.
process:
  - Scaffold — cargo project, tokio runtime, axum/actix/rocket, tower middleware
  - Routes — router, extractors, handlers, error types, middleware stack
  - Database — sqlx migrations, compile-time queries, connection pool, transactions
  - gRPC (optional) — protobuf service, tonic-build, server, interceptors
  - Auth — JWT middleware, role guard extractor, tower-http layer
  - Testing — #[tokio::test], reqwest HTTP tests, testcontainers for DB
done_when: All routes implemented, DB compile-time checked, auth working, tests passing
needs:
  - what: Route contracts + DB design
    from: Architect
  - what: Service-layer interface
    from: Tech Lead
  - what: Coding standards
    from: Tech Lead
gives:
  - what: Rust API endpoints (REST + gRPC)
    to: Frontend, QA
  - what: DB schema + sqlx migrations
    to: DevOps
  - what: Integration tests
    to: QA
quality_checklist:
  - sqlx queries compile-time checked against DB schema
  - Every handler returns IntoResponse with proper status code
  - Auth middleware applied to protected routes — 401/403 test passes
  - thiserror for domain errors, anyhow for app-level errors
  - tokio::test async tests with testcontainers for DB
  - Graceful shutdown with tokio signal handler
  - Cargo deny/audit for dependency vulnerabilities
---

## Trigger
Route contracts + DB design + service interface available.

## Instructions
1. Scaffold — cargo init. Add axum/actix/rocket, tokio, tower-http, sqlx. Configure anyhow/thiserror.
2. Routes — define Router with state, add middleware layers, implement handlers with extractors.
3. Database — create sqlx migrations. Write compile-time checked queries. Set up connection pool with PgPool.
4. gRPC (optional) — define .proto files. Cargo build with tonic-build. Implement server with interceptors.
5. Auth — create tower-http auth layer. Implement JWT validation middleware. Add role guard extractor.
6. Testing — write #[tokio::test] async tests. Use reqwest for HTTP client tests. testcontainers for DB-backed tests.
7. Graceful shutdown — tokio::signal for ctrl+c. Shutdown DB pool, drain connections.
8. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/backend-rust.md`
9. Update `.crewmarkdown/state/workflow.json`

## Done When
All routes implemented, DB compile-time checked, auth working, tests passing.
