---
extends: ../workflow.md
role: Frontend/Vue
trigger: UX designs + API contracts + component tokens available.
process:
  - Scaffold — Vite + Vue 3 + TypeScript, Pinia, Vue Router
  - Components — SFCs with script setup + Composition API + scoped styles
  - State — Pinia stores per domain, composables for local state
  - Routing — Vue Router with lazy loading, guards, transitions
  - Data Fetching — composables with watchEffect/useFetch, TanStack Query or Pinia colada
  - Testing — Vitest + @vue/test-utils for components, Playwright for E2E
  - Performance — lazy routes, v-memo, shallowRef, bundle analysis
done_when: All screens implemented in Vue 3, routes working, Pinia stores connected, tests passing
needs:
  - what: UI designs + assets
    from: UX Designer
  - what: API contracts
    from: Backend / Architect
  - what: Component tokens + route map
    from: UX Designer / PM
gives:
  - what: Vue SFC components, composables, pages
    to: Repo
  - what: Vitest component tests
    to: QA
  - what: Lazy-loaded route bundles
    to: Build
quality_checklist:
  - Components use script setup + TypeScript (no Options API)
  - Pinia stores have actions + getters, not just state
  - Routes lazy-loaded with defineAsyncComponent or dynamic import
  - Scoped styles on all components (no global CSS leaks)
  - Composables extracted for reusable logic (use-prefixed)
  - Bundle size audited — no regression >5%
  - Nuxt auto-imports configured (no manual imports for common APIs)
---

## Trigger
UX designs + API contracts + component tokens available.

## Instructions
1. Scaffold — set up Vite + Vue 3 + TypeScript. Add Pinia, Vue Router, and auto-import plugin.
2. Components — build SFCs with script setup + TypeScript + scoped styles. Extract composables for reusable logic.
3. State — create Pinia stores per domain. Use composables for local component state.
4. Routing — set up Vue Router with history mode. Lazy-load all page components. Add navigation guards for auth.
5. Data fetching — use composables with watchEffect for reactive data fetching. Add TanStack Query for complex server state.
6. Testing — Vitest + @vue/test-utils for each component. Playwright for critical user flows.
7. Performance — lazy-load routes, use v-memo for large lists, shallowRef for expensive objects.
8. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/frontend-vue.md`
9. Update `.crewmarkdown/state/workflow.json`

## Done When
All screens implemented in Vue 3, routes working, Pinia stores connected, tests passing.
