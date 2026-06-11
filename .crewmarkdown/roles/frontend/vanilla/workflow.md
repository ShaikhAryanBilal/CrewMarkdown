---
extends: ../workflow.md
role: Frontend/Vanilla
trigger: UX designs + component tokens available.
process:
  - Scaffold — Vite vanilla TS, import map config
  - Web Components — Custom Elements, Shadow DOM, CSS parts
  - Lit Components — LitElement, reactive properties, declarative templates
  - State — EventTarget stores, signals, module-level state
  - Routing — popstate listener + component mapping
  - Styling — Shadow DOM, CSS variables, constructable stylesheets
  - Build — Vite production, tree-shaking, dynamic imports
done_when: All UI elements as Custom Elements/Lit, routing working, bundle optimized
needs:
  - what: UI designs + assets
    from: UX Designer
  - what: API contracts
    from: Backend / Architect
  - what: Component tokens + route map
    from: UX Designer / PM
gives:
  - what: Vanilla JS/TS Web Components
    to: Repo
  - what: Lit component tests
    to: QA
  - what: Minimal framework-free bundles
    to: Build
quality_checklist:
  - Custom Elements follow naming convention (prefixed, hyphenated)
  - Shadow DOM used for component encapsulation
  - CSS parts exposed via ::part() for external styling
  - No unused dependencies — bundle analyzed
  - Dynamic import for route-based code splitting
  - All components testable outside framework (bare HTML page)
---

## Trigger
UX designs + component tokens available.

## Instructions
1. Scaffold — create Vite vanilla TS project. Configure TypeScript strict mode.
2. Web Components — define Custom Elements with Shadow DOM. Use CSS parts for stylable sub-components.
3. Lit components — use LitElement for complex components with reactive state.
4. State — create module-level stores using EventTarget or simple Observable pattern.
5. Routing — implement popstate-based SPA router. Map paths to Custom Element tags.
6. Styling — use Shadow DOM for encapsulation, CSS variables for theming, constructable stylesheets for shared styles.
7. Build — Vite production build, analyze bundle, tree-shake, dynamic imports.
8. Testing — test components in bare HTML pages. Lit has @open-wc/testing helpers.
9. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/frontend-vanilla.md`
10. Update `.crewmarkdown/state/workflow.json`

## Done When
All UI elements as Custom Elements/Lit, routing working, bundle optimized.
