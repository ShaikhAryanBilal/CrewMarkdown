---
layout: default
title: Configuration
nav_order: 6
---

# Configuration

AgentCrew provides ready-made configuration files for popular AI coding tools.

## Setup Script

```bash
# Windows (PowerShell)
./.agentcrew/config/setup.ps1

# Linux/macOS
./.agentcrew/config/setup.sh --all
```

## Supported Tools

| Tool | Config File | Location |
|------|------------|----------|
| **opencode** | `opencode.jsonc` + `AGENTS.md` + `SKILL.md` | Project root |
| **Cursor** | `.cursor/rules` | Project root |
| **Claude Code** | `CLAUDE.md` | Project root |
| **GitHub Copilot** | `.github/copilot-instructions.md` | `.github/` |

## Manual Setup

### opencode
```jsonc
// opencode.jsonc
{
  "skills": [".agentcrew/skills"],
  "commands": [
    {
      "name": "agentcrew",
      "description": "Run AgentCrew SDLC workflow",
      "command": "opencode --agent .agentcrew/roles/orchestrator/contract.md"
    }
  ]
}
```

### Cursor
Rules are in `.agentcrew/config/cursor.rules`. Copy to your project's `.cursor/rules`.

### Claude Code
Copy `.agentcrew/config/claude.MD` to `CLAUDE.md` in your project root.

### GitHub Copilot
Copy `.agentcrew/config/copilot.instructions` to `.github/copilot-instructions.md` in your project root.

## Templates

All config templates are in `.agentcrew/config/`. The setup script copies the right files for your chosen tools.
