---
extends: ../workflow.md
role: Backend/.NET
trigger: Route contracts + DB design + service interface available.
process:
  - Scaffold — ASP.NET Core project, Minimal API or Controllers, EF Core, auth, OpenAPI
  - Routes — Minimal API route groups or Controller endpoints, validation, service layer
  - Database — EF Core DbContext, code-first entities, migrations, seed data
  - Auth — Identity scaffold, JWT Bearer, role/claims policies
  - Background Jobs — BackgroundService or Hangfire for scheduled tasks
  - Testing — WebApplicationFactory, xUnit, FluentAssertions, Testcontainers
done_when: All endpoints implemented, EF Core migrated, auth enforced, tests passing
needs:
  - what: Route contracts + DB design
    from: Architect
  - what: Service-layer interface
    from: Tech Lead
  - what: Coding standards
    from: Tech Lead
gives:
  - what: ASP.NET Core API endpoints
    to: Frontend, QA
  - what: EF Core migrations
    to: DevOps
  - what: xUnit integration tests
    to: QA
quality_checklist:
  - Every endpoint validated with FluentValidation or data annotations
  - Auth middleware applied — 401/403 test confirmed
  - EF Core N+1 eliminated — Include/Select reviewed
  - Migrations tested (can apply + rollback)
  - WebApplicationFactory integration tests cover main flows
  - OpenAPI/Scalar docs accessible at /swagger or /scalar
  - Background services registered and started
---

## Trigger
Route contracts + DB design + service interface available.

## Instructions
1. Scaffold — dotnet new webapi with Minimal APIs. Add EF Core, JWT auth, FluentValidation, OpenAPI.
2. Routes — define Minimal API route groups with filters. Or create Controllers with ApiController attribute.
3. Database — define DbContext and entity classes. Create code-first migrations. Seed initial data.
4. Auth — scaffold Identity if needed. Configure JWT Bearer authentication. Register policies.
5. Background jobs — implement BackgroundService or add Hangfire. Register in DI.
6. Testing — create WebApplicationFactory for integration tests. Use xUnit + FluentAssertions. Add Testcontainers for DB.
7. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/backend-dotnet.md`
8. Update `.crewmarkdown/state/workflow.json`

## Done When
All endpoints implemented, EF Core migrated, auth enforced, tests passing.
