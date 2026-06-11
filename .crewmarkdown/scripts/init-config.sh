#!/usr/bin/env bash
# CrewMarkdown configuration initializer — machine and project level.
# Sets up configuration at machine level (~/.config/CrewMarkdown/config.json)
# and/or project level (.crewmarkdown/CrewMarkdown.json).
# Merge hierarchy: Machine config (base) → Project config (override) → Runtime (env vars)
# Usage:
#   ./init-config.sh                 # Both machine + project
#   ./init-config.sh --machine       # Machine only
#   ./init-config.sh --project       # Project only
#   ./init-config.sh --force         # Overwrite without prompt
#   ./init-config.sh --validate      # Validate existing configs

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
CONFIG_DIR="$REPO_ROOT/.crewmarkdown/config"
PROJECT_CONFIG="$REPO_ROOT/.crewmarkdown/CrewMarkdown.json"
MACHINE_CONFIG_DIR="$HOME/.config/CrewMarkdown"
MACHINE_CONFIG="$MACHINE_CONFIG_DIR/config.json"
SCHEMA_PATH="$CONFIG_DIR/CrewMarkdown.schema.json"

MACHINE=false
PROJECT=false
FORCE=false
VALIDATE=false

while [ "$#" -gt 0 ]; do
  case "$1" in
    --machine) MACHINE=true ;;
    --project) PROJECT=true ;;
    --force) FORCE=true ;;
    --validate) VALIDATE=true ;;
    *) echo "Unknown option: $1"; exit 1 ;;
  esac
  shift
done

echo ""
echo "=== CrewMarkdown Config Initializer ==="

if [ "$VALIDATE" = true ]; then
  echo ""
  echo "=== Config Validation ==="
  if [ -f "$MACHINE_CONFIG" ]; then
    echo "  [OK] Machine config: $MACHINE_CONFIG"
  else
    echo "  [WARN] Machine config: not found"
  fi
  if [ -f "$PROJECT_CONFIG" ]; then
    echo "  [OK] Project config: $PROJECT_CONFIG"
  else
    echo "  [WARN] Project config: not found"
  fi
  echo "Done."
  exit 0
fi

DO_MACHINE=false
DO_PROJECT=false
if [ "$MACHINE" = false ] && [ "$PROJECT" = false ]; then
  DO_MACHINE=true
  DO_PROJECT=true
elif [ "$MACHINE" = true ]; then
  DO_MACHINE=true
else
  DO_PROJECT=true
fi

if [ "$DO_MACHINE" = true ]; then
  echo ""
  echo "=== Machine Config Setup (~/.config/CrewMarkdown/config.json) ==="
  if [ -f "$MACHINE_CONFIG" ] && [ "$FORCE" = false ]; then
    read -r -p "Machine config exists. Overwrite? (y/n): " yn
    if [ "$yn" != "y" ] && [ "$yn" != "Y" ]; then
      echo "  Skipped."
    else
      FORCE=true
    fi
  fi
  if [ "$FORCE" = true ] || [ ! -f "$MACHINE_CONFIG" ]; then
    read -r -p "  Your name: " USER_NAME
    read -r -p "  Default role (e.g. Architect, Dev, PM): " DEFAULT_ROLE
    read -r -p "  Preferred AI model (or Enter to skip): " PREFERRED_MODEL
    mkdir -p "$MACHINE_CONFIG_DIR"
    cat > "$MACHINE_CONFIG" << EOF
{
  "user": {
    "name": "$USER_NAME",
    "defaultRole": "$DEFAULT_ROLE",
    "preferredModel": "$PREFERRED_MODEL"
  },
  "tools": {
    "opencode": {
      "configPath": "",
      "skillPaths": ["~/.agents/skills"]
    }
  },
  "defaults": {
    "sdlcModel": "agile",
    "logging": { "level": "normal" }
  },
  "tone": {
    "mode": "full",
    "compression": false
  }
}
EOF
    echo "  [OK] Wrote $MACHINE_CONFIG"
  fi
fi

if [ "$DO_PROJECT" = true ]; then
  echo ""
  echo "=== Project Config Setup (.crewmarkdown/CrewMarkdown.json) ==="
  if [ -f "$PROJECT_CONFIG" ] && [ "$FORCE" = false ]; then
    read -r -p "Project config exists. Overwrite? (y/n): " yn
    if [ "$yn" != "y" ] && [ "$yn" != "Y" ]; then
      echo "  Skipped."
    else
      FORCE=true
    fi
  fi
  if [ "$FORCE" = true ] || [ ! -f "$PROJECT_CONFIG" ]; then
    PROJECT_NAME="$(basename "$REPO_ROOT")"
    echo "  Detected project: $PROJECT_NAME"
    read -r -p "  SDLC model (default: agile) [waterfall, v-model, spiral, agile, iterative, incremental, big-bang, rad]: " SDLCMODEL
    SDLCMODEL="${SDLCMODEL:-agile}"
    read -r -p "  Enable security gates? (y/n, default: y): " SEC_GATES
    SEC_GATES="${SEC_GATES:-y}"
    if [ "$SEC_GATES" = "y" ] || [ "$SEC_GATES" = "Y" ]; then
      SEC_GATES_BOOL=true
    else
      SEC_GATES_BOOL=false
    fi
    read -r -p "  Roles needed (comma-separated, e.g. PM,Architect,Dev,QA,DevOps): " ROLES_STR
    if [ -z "$ROLES_STR" ]; then
      ROLES_JSON='["PM","Architect","Frontend","Backend","QA","DevOps"]'
    else
      ROLES_JSON="["
      IFS=',' read -ra ROLES <<< "$ROLES_STR"
      first=true
      for r in "${ROLES[@]}"; do
        trimmed=$(echo "$r" | xargs)
        if [ "$first" = true ]; then
          ROLES_JSON+="\"$trimmed\""
          first=false
        else
          ROLES_JSON+=", \"$trimmed\""
        fi
      done
      ROLES_JSON+="]"
    fi
    read -r -p "  CI platform (e.g. github-actions, gitlab-ci) or Enter to skip: " CI_TOOL

    cat > "$PROJECT_CONFIG" << EOF
{
  "project": {
    "name": "$PROJECT_NAME",
    "description": "",
    "sdlcModel": "$SDLCMODEL",
    "securityGates": $SEC_GATES_BOOL
  },
  "roles": {
    "available": $ROLES_JSON,
    "defaultSquad": {}
  },
  "custom": {
    "phaseOverrides": {},
    "procedureOverrides": {}
  },
  "logging": {
    "level": "normal",
    "path": ".crewmarkdown/logs/"
  },
  "integrations": {
    "ci": "$CI_TOOL",
    "ticketing": "",
    "notifications": ""
  }
}
EOF
    echo "  [OK] Wrote $PROJECT_CONFIG"
  fi
fi

echo ""
echo "Done. Run with --validate to see merge result."
echo ""
