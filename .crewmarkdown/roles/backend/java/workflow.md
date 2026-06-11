---
extends: ../workflow.md
role: Backend/Java
trigger: Route contracts + DB design + service interface available.
process:
  - Scaffold — Spring Boot/Micronaut/Quarkus project, build tool, config, profiles
  - Routes — @RestController, DTO records, validation, service layer
  - Database — JPA entities, repository, Flyway migrations, query optimization
  - Auth — SecurityFilterChain, JWT filter, method security
  - Testing — JUnit 5, Mockito, @WebMvcTest, @DataJpaTest, Testcontainers
  - Build — Maven/Gradle, multi-module, profiles, native-image
done_when: All endpoints implemented, DB migrated, auth enforced, tests passing
needs:
  - what: Route contracts + DB design
    from: Architect
  - what: Service-layer interface
    from: Tech Lead
  - what: Coding standards
    from: Tech Lead
gives:
  - what: Spring Boot / Micronaut / Quarkus API endpoints
    to: Frontend, QA
  - what: DB schema + Flyway migrations
    to: DevOps
  - what: JUnit integration tests
    to: QA
quality_checklist:
  - Every endpoint validated with jakarta.validation + @Valid
  - Auth filter on all protected routes — 401/403 test confirmed
  - Lazy loading managed with Entity Graphs or JOIN FETCH — no LazyInitializationException
  - Flyway migration has both migration and undo scripts where possible
  - Constructor injection used consistently (no @Autowired fields)
  - Testcontainers integration test passes for DB-dependent tests
  - Logging with SLF4J + structured format (JSON appender)
---

## Trigger
Route contracts + DB design + service interface available.

## Instructions
1. Scaffold — generate project via Spring Initializr/Micronaut Launch/Quarkus code. Configure Maven/Gradle wrapper, profiles.
2. Routes — create @RestController classes. Use records for request/response DTOs. Apply @Valid on request bodies.
3. Database — define JPA entities with relationships. Create Spring Data repositories. Set up Flyway migrations.
4. Auth — configure SecurityFilterChain. Add JWT authentication provider. Apply @PreAuthorize for method security.
5. Testing — JUnit 5 + Mockito for unit. @WebMvcTest for controllers. @DataJpaTest for repos. Testcontainers for full integration.
6. Build — configure multi-module structure. Set up profile-based config. Build native-image for deployment.
7. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/backend-java.md`
8. Update `.crewmarkdown/state/workflow.json`

## Done When
All endpoints implemented, DB migrated, auth enforced, tests passing.
