---
extends: ../workflow.md
role: Backend/PHP
trigger: Route contracts + DB design + service interface available.
process:
  - Scaffold — Laravel/Symfony app, env config, middleware stack, auth scaffold
  - Routes — resourceful routes, middleware, Form Request validation, controllers
  - Database — Eloquent/Doctrine models, migrations, seeders, relationships, eager loading
  - Business Logic — services/actions dispatched from controllers
  - Auth — Sanctum/Passport for API auth, session auth for web
  - Queues — Horizon or Messenger for async jobs
  - Testing — PHPUnit/Pest feature tests per route
done_when: All routes implemented, auth enforced, tests passing, queues configured
needs:
  - what: Route contracts + DB design
    from: Architect
  - what: Service-layer interface
    from: Tech Lead
  - what: Coding standards
    from: Tech Lead
gives:
  - what: PHP API endpoints + middleware
    to: Frontend, QA
  - what: DB schema + migrations
    to: DevOps
  - what: PHPUnit integration tests
    to: QA
quality_checklist:
  - Every route has Form Request validation (type-safe, testable)
  - Auth middleware on all protected routes — 401 test confirmed
  - N+1 queries eliminated — profiled with Laravel Debugbar / Symfony Profiler
  - Queueable tasks dispatched for long-running operations
  - Composer dependencies locked (`composer.lock` committed, `--no-dev` verified)
  - Migration has both up and down scripts
  - CSRF protection on web routes
---

## Trigger
Route contracts + DB design + service interface available.

## Instructions
1. Scaffold — create Laravel/Symfony app, configure .env, set up database, scaffold auth, configure middleware stack.
2. Routes — define resourceful routes, apply middleware (auth, throttle, verified), wire to controllers, add Form Request validation.
3. Database — define Eloquent/Doctrine models with relationships, create migrations and seeders, profile for N+1.
4. Business logic — delegate to service classes or action classes (thin controllers).
5. Auth — configure Sanctum/Passport for API or session auth for web routes.
6. Queues — set up Horizon or Messenger, dispatch long-running tasks as async jobs.
7. Testing — PHPUnit/Pest feature tests per route, mock external services.
8. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/backend-php.md`
9. Update `.crewmarkdown/state/workflow.json`

## Done When
All routes implemented, auth enforced, tests passing, queues configured.

## Needs → Gives
| Need | From | → Gives | To |
|------|------|--------|----|
| Route contracts + DB design | Architect | PHP API endpoints + middleware | Frontend, QA |
| Service-layer interface | Tech Lead | DB schema + migrations | DevOps |
| Coding standards | Tech Lead | PHPUnit integration tests | QA |

## Quality Checklist
- Every route has Form Request validation (type-safe, testable)
- Auth middleware on all protected routes — 401 test confirmed
- N+1 queries eliminated — profiled with Laravel Debugbar / Symfony Profiler
- Queueable tasks dispatched for long-running operations
- Composer dependencies locked (composer.lock committed, --no-dev verified)
- Migration has both up and down scripts
- CSRF protection on web routes
