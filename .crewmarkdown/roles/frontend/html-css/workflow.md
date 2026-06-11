---
extends: ../workflow.md
role: Frontend/HTML-CSS
trigger: Visual designs + design tokens + coding standards available.
process:
  - Token Setup — extract colors, typography, spacing as CSS custom properties
  - Layout — responsive Grid/Flexbox layout, mobile-first
  - Markup — semantic HTML5, ARIA, forms, structured data
  - Styling — component styles using BEM/utility-first, animations
  - Responsive — test at all breakpoints, container queries where applicable
  - Accessibility — WCAG 2.1 AA audit, keyboard nav, screen reader
  - Build — PostCSS, Autoprefixer, PurgeCSS for production
  - Testing — visual regression, cross-browser, responsive screenshot testing
done_when: All pages marked up and styled, responsive at all breakpoints, WCAG 2.1 AA compliant, visual regression tests passing
needs:
  - what: Visual designs (Figma, etc.)
    from: UX Designer
  - what: Design tokens + API contracts
    from: UX Designer, Backend
  - what: Coding standards
    from: Tech Lead
gives:
  - what: Semantic HTML markup + CSS styles
    to: Repo
  - what: Visual regression tests
    to: QA
  - what: Responsive + accessible UI
    to: End users
quality_checklist:
  - Semantic HTML elements used (no div-only pages)
  - Custom properties for all design tokens — no hardcoded values
  - Responsive at 320px, 768px, 1440px, 2560px
  - Color contrast min 4.5:1 text, 3:1 large text
  - Keyboard navigation flows in logical order
  - Animations respect prefers-reduced-motion
  - No !important in component styles
  - CSS audit — no unused styles in production build
---

## Trigger
Visual designs + design tokens + coding standards available.

## Instructions
1. Token setup — extract all design tokens as CSS custom properties on :root.
2. Layout — build page layout using CSS Grid (page-level) and Flexbox (component-level). Mobile-first.
3. Markup — write semantic HTML5. Use ARIA roles and labels for non-semantic interactive elements.
4. Styling — style components using chosen methodology (BEM / utility-first). Add animations with prefers-reduced-motion fallback.
5. Responsive — test at every breakpoint. Use container queries for reusable components.
6. Accessibility — audit: keyboard nav, screen reader (VoiceOver/NVDA), color contrast, focus indicators.
7. Build — configure PostCSS (Autoprefixer, nesting), PurgeCSS for production.
8. Testing — set up visual regression (Percy/Chromatic), cross-browser tests (Playwright).
9. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/frontend-html-css.md`
10. Update `.crewmarkdown/state/workflow.json`

## Done When
All pages marked up and styled, responsive at all breakpoints, WCAG 2.1 AA compliant, visual regression tests passing.

## Needs → Gives
| Need | From | → Gives | To |
|------|------|--------|----|
| Visual designs (Figma, etc.) | UX Designer | Semantic HTML markup + CSS styles | Repo |
| Design tokens + API contracts | UX Designer, Backend | Visual regression tests | QA |
| Coding standards | Tech Lead | Responsive + accessible UI | End users |

## Quality Checklist
- Semantic HTML elements used (no div-only pages)
- Custom properties for all design tokens — no hardcoded values
- Responsive at 320px, 768px, 1440px, 2560px
- Color contrast min 4.5:1 text, 3:1 large text
- Keyboard navigation flows in logical order
- Animations respect prefers-reduced-motion
- No !important in component styles
- CSS audit — no unused styles in production build
