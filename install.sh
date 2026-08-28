#!/usr/bin/env sh
set -eu

repo='https://github.com/XN-289/sun-ge-xinfa-skill'
branch='main'
target="${1:-$HOME/.codex/skills/sun-ge-xinfa}"

if [ -e "$target" ]; then
  echo "Already installed: $target"
  echo 'To reinstall, remove or rename that folder, then run this script again.'
  exit 0
fi

files='SKILL.md
agents/openai.yaml
references/public-record.md
references/narrative-analysis.md
references/jingtian-case-study.md
references/source-manifest.md
references/media-archive.md
references/strategy-sandbox.md
references/dark-patterns.md
references/external-search.md
references/hype-engine.md
references/meme-system.md
references/guardrails.md'

for file in $files; do
  mkdir -p "$target/$(dirname "$file")"
  curl -fsSL "$repo/raw/$branch/$file" -o "$target/$file"
done

echo "Installed sun-ge-xinfa to $target"
echo 'Restart Codex, then invoke: 使用 $sun-ge-xinfa'
