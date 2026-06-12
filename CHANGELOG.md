# Changelog — CrewMarkdown

> Project changelog organized by date.

---

## 2026-06-12

### Added
- **7 new modes** — incident, review, interview, negotiation, retrospective, hackathon, onboarding — each with 5-step procedure directory, dedicated role with contract+workflow, routing entries, and full doc integration (49 files, 619 lines)
- **Save-confirmation gate** (`procedures/00-save-confirmation.md`) — asks user before persisting artifacts/logs; supports retroactive save
- **Tactical Mode** (`/tactical`) — continuous always-on thread mode that stays active for the entire conversation, dynamically dispatching roles per request with persistent context
- **Tactical Commander role** (`roles/tactical-commander/`) — owns the tactical thread: activate, dispatch, track, decide, summarize with full contract + workflow
- **5 tactical procedures** (`tactical/01-activate.md` through `05-summarize.md`) — thread state init, role dispatch, action tracking, decision logging, tactical summary generation
- **43rd role** in all docs and config — Tactical Commander added to routing table, role registry, and execution modes

### Changed
- **Universal scope** — all docs reframed from "software engineering framework" to universal agent workflow for engineering, business, creative, and operations
- AGENTS.md, SKILL.md, config files — broadened scope language
- README.md — universal tagline, overview, problem/solution, all counts updated
- docs/*.html — hero, stats, subtitles, execution modes, invocation modes reflect all domains
- All 11 objective files — added save-confirmation gate step
- `CHANGELOG.md` — this entry

### Documentation
- **Mermaid.js interactive flow charts** added to all 6 HTML doc pages
- Request→Ship pipeline flow chart on `docs/index.html`
- Routing engine flow chart (skill-level inference, semantic matching, sub-spec resolution) on `docs/features.html`
- Objective landscape flow chart on `docs/objectives.html`
- Dark-theme Mermaid styling with `.mermaid-wrapper` CSS containers
- Fixed objectives flow chart TD layout for readability

---

## 2026-06-11

### Added
- **Semantic matching** — `synonyms:` field in all 22 routing entries (`00-objectives.md`), enabling synonym-based (not just keyword) request→objective matching
- **Confidence scoring** — each routing entry now has `confidence:` level (high/medium/low) guiding agent when to route silently vs. ask user
- **Routing Strategy** documentation (5-tier match priority: exact → synonym → partial → fuzzy → none)
- **Routing Cache** (`state/routing-cache.json`) — stores last 50 request→objective mappings; agent checks cache before scanning routing table
- **Feedback Loop** (`state/reroute-feedback.json`) — logs user corrections so routing improves over time
- **`/reroute` command** (`00-team.md`) — abandon current objective, load correct one, log correction to cache + feedback

### Changed
- `00-objectives.md` — routing table: every entry got `synonyms:` + `confidence:`; body: added full Routing Strategy section covering semantic match, confidence scoring, cache, feedback loop, `/reroute`
- `00-team.md` — added invocation pattern #5 for `/reroute`

### Infrastructure
- `state/routing-cache.json` seeded with session routing decisions
- `state/reroute-feedback.json` created with schema (empty, ready for corrections)

---

## 2026-06-10

### Added
- **SDLC Model Selection system** (`config/sdlc-models.md`) — 8 models (Waterfall, V-Model, Spiral, Agile, Iterative, Incremental, Big Bang, RAD) with selection criteria, phase maps, gates, risk patterns
- **16 new business & specialist roles**: Marketing, Sales, HR, Finance, General Management, SEO Specialist, UX Researcher, Data Scientist, Growth Marketing, Customer Success, SRE, Legal, BizDev, Solutions Architect, Content Strategist
- **New objectives**: `obj/select-sdlc` (optional model selection), `09-execute-campaign.md`, `10-people-ops.md`
- **Routing** for campaigns, people ops, SDLC selection in `00-objectives.md`
- **New scripts**: adr-gen, changelog-gen, ci-gen, health-check, issue-sync, markdown-lint, release-prep, scaffold-init, state-diff, step-integrity, template-check, validate-contracts, xref-validator (PS1 + SH)
- **New config**: `CrewMarkdown.ps1`, `tone.json`, `humor-data.ps1`
- CrewMarkdown step index script (`.crewmarkdown/CrewMarkdown.ps1`) with humor/please/yell modes

### Changed
- Log path restructured: `.crewmarkdown/log/` → `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>/<role>.md`
- Orchestrator contract & workflow overhaul — multi-objective coordination, phase gate tracking
- Squad expanded for Plan Work (Finance, HR, Management) and Build Feature (Marketing, Sales)
- All 18 existing role workflows updated for consistency
- `validate-workflow.ps1` greatly enhanced (140 lines, comprehensive checks)
- `write-workflow-log.ps1` / `.sh` updated for new log path
- `show-party.ps1` enhanced with more animation patterns
- `opencode.jsonc` CrewMarkdown command updated
- AGENTS.md, SKILL.md, README.md updated to reflect 33 roles

### Infrastructure
- `.gitignore` updated for new script artifacts
- All config files standardized (claude.MD, copilot.instructions, cursor.rules, opencode configs)

---

## 2026-06-09

### Added
- **Technical Writer role** (`roles/technical-writer/`) — owns API docs, user guides, release notes, onboarding guides with full contract + workflow
- Routing in `00-objectives.md` for doc requests: `"Write API docs"`, `"Write release notes"`, `"Write user guide"`
- Integrated Technical Writer into **Build Feature** (API docs) and **Ship Release** (release notes) squads
- Initial CrewMarkdown setup: 16 AI roles with contracts, workflows, and procedures
- Objective-based workflow routing (7 objectives)
- Retro RPG party screen animation (`show-party.ps1` / `show-party.sh`)
- `AGENTS.md` entry point for AI agents
- GitHub Pages site with sidebar, dark theme, and full role/objective/procedure pages
- `codebase-map.md` for agent context

### Changed
- README overhaul with problem/solution narrative and FIGlet banner
- Updated GitHub Pages site to reflect 17 roles (all HTML pages)

### Infrastructure
- `.gitignore` configuration
- `opencode.jsonc` for opencode integration
- CI/CD workflows
