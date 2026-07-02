#!/usr/bin/env bash
# Export the deck to slides.pdf via reveal.js ?print-pdf + headless Chrome.
set -euo pipefail
cd "$(dirname "$0")"

PORT=8987
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

python3 -m http.server "$PORT" --bind 127.0.0.1 >/dev/null 2>&1 &
SERVER_PID=$!
trap 'kill "$SERVER_PID" 2>/dev/null || true' EXIT
sleep 1

"$CHROME" --headless --disable-gpu \
  --print-to-pdf=slides.pdf \
  --no-pdf-header-footer \
  --virtual-time-budget=10000 \
  "http://127.0.0.1:$PORT/index.html?print-pdf"

echo "Wrote $(pwd)/slides.pdf"
