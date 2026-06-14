# CrewMarkdown

**AI agents with structure, not chaos.** CrewMarkdown gives any AI agent a repeatable workflow — engineering, business, creative, or operations. No SaaS, no API keys, no vendor lock. Just markdown.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![AI Ready](https://img.shields.io/badge/AI-Ready-8A2BE2)](#)
[![No Dependencies](https://img.shields.io/badge/Dependencies-Zero-success)](#)

---

## What is CrewMarkdown?

AI agents are powerful but unpredictable. Without structure, every prompt is a gamble. CrewMarkdown gives AI agents a **workflow brain** — a set of markdown files that tell the agent how to plan, execute, verify, and deliver consistently.

**The idea:** You describe what you need. The agent reads `.crewmarkdown/`, routes your request to the right objective, assembles a squad of specialized roles, and executes with quality gates. Results are consistent, auditable, and professional.

Works for any AI agent (opencode, Claude Code, Cursor, Copilot, Cline). Works for any domain — code, marketing, hiring, budgeting.

---

## Quick Start

```bash
# 1. Copy to your project
cp -r .crewmarkdown ./your-project/

# 2. Run the entry point
./go.ps1
```

Then type what you need in plain English. The agent handles the rest.

**Power users** can also run the setup script for their AI tool:
```bash
./.crewmarkdown/config/setup.ps1   # Windows
./.crewmarkdown/config/setup.sh    # macOS/Linux
```

---

## How It Works

1. **You make a request** — "Build a landing page", "Plan the sprint", "Write a PRD"
2. **CrewMarkdown routes it** — matches your request to an objective with the right squad of roles
3. **The squad executes** — each role follows its contract and workflow, producing verified artifacts
4. **Results are logged** — everything saved to `.crewmarkdown/logs/` for audit trails

The more specific you are, the more autonomy the agent gives you. Vague request? Agent takes the lead. Role-level command? Agent follows precisely. Same system adapts to your skill level.

### Execution Modes

| Mode | Example | What happens |
|------|---------|-------------|
| **Solo** | `"Architect, design the DB"` | Single role, zero overhead |
| **Squad** | `"Squad (QA, Security), verify the release"` | Multiple roles, one objective |
| **Orchestrate** | `"Build the e-commerce platform"` | Full lifecycle, multi-objective |
| **Meeting** | `"/meeting brainstorm [topic]"` | Structured discussion with decisions |
| **Incident** | `"/incident auth service 5xx"` | Triage → diagnose → mitigate → postmortem |
| **Review** | `"/review payment PR #42"` | Structured artifact review with sign-off |

See [full docs](docs/index.html) for all 12 modes.

---

## What's Included

`.crewmarkdown/` ships with everything you need:

```
.crewmarkdown/
├── 00-objectives.md     # Request routing table
├── 00-team.md           # Crew roster
├── objectives/          # Lifecycle objectives with squad definitions
├── roles/               # Role contracts + workflows
├── procedures/          # Step-by-step how-to guides
├── incident/            # Incident response workflow
├── review/              # Structured review
├── meeting/             # Meeting mode
├── scripts/             # State dashboard + utilities
├── state/workflow.json  # Progress tracking
└── logs/                # Execution history
```

### Role Families

**Engineering:** Architect, Tech Lead, Frontend, Backend, Mobile, DevOps, SRE, DBA  
**Product & Design:** PM, BA, UX Designer, UX Researcher  
**Data & ML:** Data Engineer, Data Scientist, ML Engineer  
**Quality & Security:** QA, Security Engineer  
**Business:** Marketing, Sales, Growth, SEO, Content Strategist, BizDev, Solutions Architect  
**Operations:** EM, Scrum Master, Technical Writer, Customer Success  
**Governance:** HR, Finance, Legal, General Management  
**Special Modes:** Meeting Facilitator, Incident Commander, Review Facilitator, Interviewer, Mediator, Retro Facilitator, Hackathon Champion, Onboarding Buddy, Tactical Commander

Each role has a YAML-frontmatter contract, structured workflow, quality checklist, and artifact templates.

---

## Variants

| Variant | When to use |
|---------|-------------|
| **Full** (default) | Production systems — full squads, all quality gates |
| **Light** (`.crewmarkdown/light/`) | MVPs, prototypes — 7 compressed steps, less ceremony |
| **Meeting** | Brainstorming, decision-making |
| **Incident** | Production issue response |
| **Review** | Code/design/PRD reviews |
| **Interview** | User/stakeholder research |
| **Negotiation** | Trade-off & conflict resolution |
| **Retrospective** | Team reflection & improvement |
| **Hackathon** | Innovation sprints |
| **Onboarding** | New hire ramp-up |
| **Tactical** | Continuous always-on thread |

---

## Requirements

- Any AI agent that reads markdown — opencode, Claude Code, Cursor, GitHub Copilot, Cline
- PowerShell 5.1+ or Bash (optional — for setup scripts and codebase map generation)

---

## Without vs. With CrewMarkdown

| | Without | With |
|--|---------|------|
| Outputs | Inconsistent, varies per prompt | Standardized artifacts every time |
| Quality | Random, depends on the day | Checklists per role, gated |
| Process | No repeatable workflow | 11+ objectives with defined squads |
| Memory | No cross-session tracking | Logged objectives + state persistence |
| Portability | Tied to one agent or prompt style | Portable markdown — any agent reads it |
| Scope | Single domain | Engineering, business, creative, operations |

---

<div align="center">

**MIT Licensed** — Built for AI-native work across any domain

[Star on GitHub](https://github.com/ShaikhAryanBilal/CrewMarkdown) · [Report an Issue](https://github.com/ShaikhAryanBilal/CrewMarkdown/issues) · [Contributions Welcome](CONTRIBUTING.md)

[Read the Documentation](docs/index.html)

</div>
