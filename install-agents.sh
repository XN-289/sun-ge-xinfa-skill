#!/usr/bin/env sh
set -eu

project_root="${1:-.}"
branch='main'
raw_base="https://raw.githubusercontent.com/XN-289/sun-ge-xinfa-skill"
repo="https://github.com/XN-289/sun-ge-xinfa-skill"
agent_file="$raw_base/$branch/AGENTS.md"
cursor_file="$raw_base/$branch/adapters/cursor.mdc"

install_rule_file() {
  relative_path="$1"
  uri="$2"
  out="$project_root/$relative_path"
  mkdir -p "$(dirname "$out")"
  curl -fsSL "$uri" -o "$out"
  echo "Installed $out"
}

install_rule_file '.cursor/rules/sun-ge-xinfa.mdc' "$cursor_file"

for path in \
  '.windsurf/rules/sun-ge-xinfa.md' \
  '.clinerules/sun-ge-xinfa.md' \
  '.trae/rules/sun-ge-xinfa.md' \
  '.codebuddy/rules/sun-ge-xinfa.md' \
  '.lingma/rules/sun-ge-xinfa.md' \
  '.qoder/rules/sun-ge-xinfa.md' \
  '.mars/rules/sun-ge-xinfa.md' \
  '.comate/rules/sun-ge-xinfa.md'
do
  install_rule_file "$path" "$agent_file"
done

echo 'Gemini CLI: append AGENTS.md content to GEMINI.md or ~/.gemini/GEMINI.md. Do not overwrite existing content.'
echo 'GitHub Copilot: append AGENTS.md content to .github/copilot-instructions.md. Do not overwrite existing content.'

if [ "${SKIP_SKILL:-0}" != '1' ]; then
  claude_dir="$HOME/.claude/skills/sun-ge-xinfa"
  if [ -e "$claude_dir" ]; then
    echo "Claude skill already exists: $claude_dir"
  else
    files='SKILL.md
agents/openai.yaml
references/public-record.md
references/narrative-analysis.md
references/jingtian-case-study.md
references/source-manifest.md
references/strategy-sandbox.md
references/dark-patterns.md
references/external-search.md
references/hype-engine.md
references/meme-system.md
references/guardrails.md'

    for file in $files; do
      mkdir -p "$claude_dir/$(dirname "$file")"
      curl -fsSL "$repo/raw/$branch/$file" -o "$claude_dir/$file"
    done

    echo "Installed Claude skill to $claude_dir"
  fi
fi

echo 'Rule adapters installed. For Codex, run install.sh.'
