#!/usr/bin/env bash
set -e

BASE="http://localhost:8080"

check() {
  path="$1"
  curl -fsS "$BASE$path" > /dev/null
  echo "PASS $path"
}

check "/"
check "/api/health.json"
check "/api/verification.json"
check "/api/replay-api.json"
check "/api/verification-engine.json"
check "/api/replay-history.json"
check "/api/runtime-events.json"
check "/api/replay-export-package.json"

echo "ASR runtime health check passed."
