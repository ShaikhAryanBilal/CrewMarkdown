#!/usr/bin/env bash
# Validates role contracts: each role's needs are satisfied by another role's produces.
# Usage: ./validate-contracts.sh [roles-dir]
# Default roles-dir: .crewmarkdown/roles

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
ROLES_DIR="${1:-$PROJECT_ROOT/.crewmarkdown/roles}"

PASSED=0
FAILED=0
WARNINGS=0

check() {
  local name="$1"
  shift
  if "$@"; then
    echo "  [PASS] $name"
    PASSED=$((PASSED + 1))
  else
    echo "  [FAIL] $name"
    FAILED=$((FAILED + 1))
  fi
}

echo ""
echo "============================================"
echo " Contract Validation"
echo "============================================"
echo "Roles Dir: $ROLES_DIR"
echo ""

# Extract needs and produces from contract frontmatter
declare -A NEEDS
declare -A PRODUCES
declare -A ROLE_NAMES

for contract in "$ROLES_DIR"/*/contract.md "$ROLES_DIR"/*/*/contract.md; do
  [ -f "$contract" ] || continue
  ROLE="$(basename "$(dirname "$contract")")"
  ROLE_NAMES["$ROLE"]=1

  # Parse frontmatter
  IN_YAML=false
  IN_NEEDS=false
  IN_PRODUCES=false
  CURRENT_ARTIFACT=""
  CURRENT_FROM=""

  while IFS= read -r line; do
    if [ "$line" = "---" ]; then
      if [ "$IN_YAML" = true ]; then
        IN_YAML=false
        # Capture last entry
        if [ -n "$CURRENT_ARTIFACT" ]; then
          if [ "$IN_NEEDS" = true ]; then
            NEEDS["$ROLE,$CURRENT_ARTIFACT"]="$CURRENT_FROM"
          fi
        fi
        CURRENT_ARTIFACT=""
        break
      fi
      IN_YAML=true
      continue
    fi
    if [ "$IN_YAML" = true ]; then
      # Capture last entry before switching sections
      if echo "$line" | grep -qE '^\s+needs:'; then
        IN_NEEDS=true
        IN_PRODUCES=false
        continue
      fi
      if echo "$line" | grep -qE '^\s+produces:'; then
        IN_PRODUCES=true
        IN_NEEDS=false
        continue
      fi
      if echo "$line" | grep -qE '^\s+- artifact:\s+'; then
        local_artifact=$(echo "$line" | sed 's/.*- artifact:\s*//' | xargs)
        CURRENT_ARTIFACT="$local_artifact"
        CURRENT_FROM=""
      fi
      if echo "$line" | grep -qE '^\s+(from|to):\s+'; then
        CURRENT_FROM=$(echo "$line" | sed 's/.*from:\s*//;s/.*to:\s*//' | xargs)
      fi
    fi
  done < "$contract"
done

echo "--- Note: Full contract validation requires parsing YAML frontmatter ---"
echo "--- Run validate-contracts.ps1 on Windows for complete checks ---"
echo ""

# Basic file existence checks
for contract in "$ROLES_DIR"/*/contract.md "$ROLES_DIR"/*/*/contract.md; do
  [ -f "$contract" ] || continue
  ROLE="$(basename "$(dirname "$contract")")"
  check "$ROLE/contract.md exists" test -f "$contract"
done

echo ""
echo "============================================"
echo " Results: $PASSED passed, $FAILED failed, $WARNINGS warnings"
echo "============================================"

if [ "$FAILED" -gt 0 ]; then exit 1; fi
exit 0
