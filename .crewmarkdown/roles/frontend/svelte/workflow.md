---
extends: ../workflow.md
role: Frontend/Svelte
trigger: UX designs + API contracts + component tokens available.
process:
  - Scaffold — SvelteKit project, TypeScript, Tailwind, adapter config
  - Components — Svelte 5 runes mode, snippets, scoped styles, transitions
  - Routing — file-based pages, layouts, load functions, form actions
  - State — $state for local, stores for shared, context for providers
  - Data Loading — universal + server load functions, invalidation, streaming
  - SSR/SSG — hybrid rendering per route, prerender static pages
  - Testing — @testing-library/svelte unit tests, Playwright E2E
  - Performance — runes reactivity, lazy routes, bundle analysis
done_when: All pages built with Svelte 5/SvelteKit, routing complete, data loading wired, tests passing
needs:
  - what: UI designs + assets
    from: UX Designer
  - what: API contracts
    from: Backend / Architect
  - what: Component tokens + route map
    from: UX Designer / PM
gives:
  - what: Svelte 5 components, SvelteKit pages, stores
    to: Repo
  - what: @testing-library/svelte tests
    to: QA
  - what: SSR/SSG optimized builds
    to: Build / Deploy
quality_checklist:
  - Components use Svelte 5 runes ($state, $derived, not $:)
  - Scoped styles on every component (no global style leaks)
  - Load functions handle loading, error, empty states
  - Form actions for all mutations (not fetch())
  - SvelteKit pages use correct rendering mode (ssr/prerender per route)
  - Bundle size audited — no regression >5%
  - Adapter configured for target deployment platform
---

## Trigger
UX designs + API contracts + component tokens available.

## Instructions
1. Scaffold — create SvelteKit project with TypeScript. Configure Tailwind, adapter (node/vercel/netlify/cloudflare).
2. Components — write Svelte 5 runes mode components. Use snippets for reusable template fragments.
3. Routing — define page tree with +page.svelte, +layout.svelte, +error.svelte. Add server-only routes with +page.server.js.
4. State — $state for component-local, writable stores for shared, context for provider pattern.
5. Data loading — +page.js for universal load, +page.server.js for private data, form actions for mutations.
6. SSR/SSG — set ssr=false for client-only pages, prerender static content, use streaming for slow data.
7. Testing — Vitest + @testing-library/svelte for components. Playwright for critical user flows.
8. Performance — SvelteKit automatically code-splits by route. Audit with `svelte-kit preview` + Lighthouse.
9. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/frontend-svelte.md`
10. Update `.crewmarkdown/state/workflow.json`

## Done When
All pages built with Svelte 5/SvelteKit, routing complete, data loading wired, tests passing.
