---
extends: ../workflow.md
role: Scrum Master/Kanban
trigger: Existing workflow visualized, WIP limits to define.
process:
  - Board Setup — map value stream, define columns, set WIP limits
  - Standup — walk board, blocked items, balance WIP
  - Flow Management — track cycle time, CFD, identify bottlenecks
  - Service Delivery Review — SLA compliance, demand vs capacity
  - Continuous Improvement — policy adjustments, Kaizen
done_when: Workflow visualized, WIP limits respected, flow metrics trending
needs:
  - what: Current workflow state
    from: Team
gives:
  - what: Kanban board, flow metrics, improvement proposals
    to: Team
quality_checklist:
  - Every column has explicit WIP limit
  - Blocked items have visible flag with age
  - Cycle time trend visible (last 4 weeks)
  - CFD shows stable or improving flow
---

## Trigger
Existing workflow visualized, WIP limits to define.

## Instructions
1. Board setup — map the value stream, define columns, set WIP limits with team.
2. Standup — walk board left to right, address blocked items first.
3. Flow management — track cycle time, lead time, throughput. Generate CFD weekly.
4. Service delivery review — review SLA compliance, demand vs capacity.
5. Continuous improvement — adjust policies based on flow data.
6. Log to `.crewmarkdown/logs/<yyyy>/<MM>/<dd>/<HHmmss>/<chat-slug>-<HHmmss>/scrum-master-kanban.md`
7. Update `.crewmarkdown/state/workflow.json`

## Done When
Workflow visualized, WIP limits respected, flow metrics trending.
