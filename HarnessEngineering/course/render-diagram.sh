#!/usr/bin/env bash
# Turn a Mermaid source file into a PNG image.
# Usage: bash HarnessEngineering/course/render-diagram.sh HarnessEngineering/diagrams/day-02.mmd
# Writes day-02.png next to the .mmd file. Exits non-zero if it could not render.
set -euo pipefail
src="$1"; out="${src%.mmd}.png"
chrome="$(ls -d /opt/pw-browsers/chromium-*/chrome-linux*/chrome 2>/dev/null | head -1 || true)"
[ -z "$chrome" ] && chrome="$(command -v chromium || command -v chromium-browser || command -v google-chrome || true)"
cfg="$(mktemp)"
if [ -n "$chrome" ]; then
  printf '{"executablePath":"%s","args":["--no-sandbox"]}' "$chrome" > "$cfg"
  export PUPPETEER_SKIP_DOWNLOAD=1
else
  printf '{"args":["--no-sandbox"]}' > "$cfg"
fi
npx -y @mermaid-js/mermaid-cli@11 -i "$src" -o "$out" -s 2 -b white -p "$cfg" >/dev/null
test -s "$out" && echo "rendered $out"
