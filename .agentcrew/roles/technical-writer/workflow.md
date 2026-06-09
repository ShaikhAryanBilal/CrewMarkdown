# Technical Writer Workflow

## Trigger
Documentation request received or a built artifact is ready for documentation.

## Process
1. **Audience Analysis** — identify who will read the docs (end users, devs, operators, stakeholders)
2. **Information Gathering** — review specs, code, architecture, requirements; interview SMEs if needed
3. **Outline** — structure content logically; one concept per section
4. **Drafting** — write clear, concise documentation following the project's doc style
5. **Technical Review** — hand off to relevant SME (Dev, Architect, Backend) for accuracy check
6. **Editorial Review** — review for clarity, consistency, grammar, tone
7. **Publish** — commit to repo / generate site / attach to release

## Done When
- Documentation written, technically reviewed, and published alongside the artifact it describes
- All code examples tested and verified
- Stale or superseded docs flagged or removed

## Needs
| What | From |
|------|------|
| Technical specs / contracts | Backend, Architect |
| Architecture context | Architect, Tech Lead |
| Requirements | PM, BA |
| UI context | UX Designer |
| Release scope | DevOps, PM |

## Gives
| What | To |
|------|-----|
| API reference docs | Devs, QA, external consumers |
| Architecture docs | All roles, new hires |
| User guides | End users, Support |
| README / onboarding | New team members |
| Release notes | PM, DevOps, stakeholders |

## Quality Checklist
- [ ] Audience explicitly identified and content tailored
- [ ] All code examples tested and produce correct output
- [ ] No jargon without definition on first use
- [ ] Single source of truth — no duplicate information
- [ ] Technically reviewed by relevant SME
- [ ] Consistent formatting with project style
- [ ] Version / date stamp on docs tied to release
