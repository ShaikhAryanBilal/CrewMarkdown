---
extends: ../workflow.md
role: Frontend/Angular
trigger: UX designs + API contracts + component tokens available.
process:
  - Scaffold — Angular CLI, standalone app, routing, styles, environment config
  - Components — standalone + OnPush + signals + template + scoped styles
  - State — signals for local, SignalStore for shared, RxJS for streams
  - Routing — lazy standalone routes, guards, resolvers, route transitions
  - Forms — Reactive Forms with FormBuilder + validators
  - HTTP — interceptors for auth/error/logging, HttpContext tokens
  - Testing — Jest unit tests with TestBed + Harnesses, Playwright E2E
  - Performance — OnPush, trackBy, virtual scroll, lazy loading, signals
done_when: All screens implemented as standalone components, routes lazy-loaded, signals wired, tests passing
needs:
  - what: UI designs + assets
    from: UX Designer
  - what: API contracts
    from: Backend / Architect
  - what: Component tokens + route map
    from: UX Designer / PM
gives:
  - what: Angular standalone components, services, pages
    to: Repo
  - what: Jest component tests
    to: QA
  - what: Lazy-loaded route bundles
    to: Build
quality_checklist:
  - All components use OnPush change detection
  - Signals used for local state (not plain variables)
  - No manual subscriptions in components (async pipe or signals)
  - Routes lazy-loaded (loadComponent, not eager imports)
  - Reactive Forms with typed FormGroup (TypeScript strict)
  - HTTP interceptors for cross-cutting concerns (auth, error, logging)
  - Bundle size audited — no regression >5%
---

## Trigger
UX designs + API contracts + component tokens available.

## Instructions
1. Scaffold — ng new with standalone true, routing, scss. Add Angular Material or PrimeNG.
2. Components — generate standalone components with OnPush change detection. Use signals for internal state.
3. State — signals for component-local state. SignalStore for shared domain state. RxJS only for debounced/stream operations.
4. Routing — define lazy standalone routes. Add canActivate/canMatch guards for auth. Add resolvers for data pre-fetch.
5. Forms — build Reactive Forms with FormBuilder. Add custom validators. Use valueChanges for reactive flows.
6. HTTP — create HttpClient via DI. Build interceptors for auth token injection, error handling, request logging.
7. Testing — TestBed + Harnesses for component tests. Jest for unit. Playwright for E2E flows.
8. Performance — OnPush everywhere, trackBy on *ngFor/@for, virtual scroll for lists >100 items.
9. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/frontend-angular.md`
10. Update `.crewmarkdown/state/workflow.json`

## Done When
All screens implemented as standalone components, routes lazy-loaded, signals wired, tests passing.
