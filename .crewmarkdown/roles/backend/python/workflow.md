---
extends: ../workflow.md
role: Backend/Python
trigger: Route contracts + DB design + service interface available.
process:
  - Scaffold — FastAPI/Django/Flask project, async config, Pydantic models
  - Routes — endpoints with type validation, DI, controllers, service layer
  - Database — SQLAlchemy async models, Alembic migrations, query optimization
  - Auth — JWT/OAuth2 middleware, role permissions, token refresh
  - Async Tasks — Celery/arq queues, beat schedule, task monitoring
  - Testing — pytest, httpx async tests, factory_boy, coverage
done_when: All endpoints implemented, auth enforced, async DB connected, tests passing
needs:
  - what: Route contracts + DB design
    from: Architect
  - what: Service-layer interface
    from: Tech Lead
  - what: Coding standards
    from: Tech Lead
gives:
  - what: FastAPI/Django/Flask API endpoints
    to: Frontend, QA
  - what: DB schema + migrations
    to: DevOps
  - what: pytest integration tests
    to: QA
quality_checklist:
  - Every input validated with Pydantic/DRF serializer — no raw dict access
  - Auth middleware on all protected routes — 401/403 test confirmed
  - N+1 queries eliminated — SQLAlchemy eager loading reviewed
  - Async DB sessions used consistently (no sync leakage)
  - Celery/arq tasks registered with retry policy
  - Type hints on all function signatures — mypy strict passing
  - Coverage > 80% on new code
---

## Trigger
Route contracts + DB design + service interface available.

## Instructions
1. Scaffold — set up FastAPI/Django/Flask project. Configure async DB, Pydantic models, OpenAPI docs.
2. Routes — define endpoints with path operation decorators. Wire dependencies via DI.
3. Database — create SQLAlchemy async models. Write Alembic migrations. Optimize query relationships.
4. Auth — configure JWT/OAuth2 middleware. Add permission classes. Implement token refresh flow.
5. Async tasks — set up Celery/arq. Define task functions with retry. Schedule periodic tasks.
6. Testing — pytest with httpx AsyncClient. factory_boy for test data. Coverage gate.
7. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/backend-python.md`
8. Update `.crewmarkdown/state/workflow.json`

## Done When
All endpoints implemented, auth enforced, async DB connected, tests passing.
