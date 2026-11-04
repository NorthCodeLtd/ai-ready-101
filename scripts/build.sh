#!/usr/bin/env bash
# Build the deck into _site/: index.html (what GitHub Pages serves),
# ai-ready-101.pdf, and the theme assets the HTML references.
#   ./scripts/build.sh            uses the pinned marp-cli via npx
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
MARP=(npx --yes @marp-team/marp-cli@4.4.0)

rm -rf _site
mkdir -p _site
cp -r assets _site/
"${MARP[@]}" --no-stdin slides.md -o _site/index.html
"${MARP[@]}" --no-stdin slides.md --pdf -o _site/ai-ready-101.pdf
echo "Built _site/index.html and _site/ai-ready-101.pdf"
