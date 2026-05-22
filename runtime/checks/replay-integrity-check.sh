#!/usr/bin/env bash
set -e

BASE="/opt/asr-runtime/demo/api"

required_files=(
  "runtime-envelope.json"
  "workflow-intake.json"
  "replay-pipeline.json"
  "verification-lifecycle.json"
  "verification-engine.json"
  "replay-history.json"
)

echo "Starting ASR replay integrity validation..."

for file in "${required_files[@]}"
do
  if [ -f "$BASE/$file" ]; then
    echo "PASS $file"
  else
    echo "FAIL $file"
    exit 1
  fi
done

echo "Replay integrity validation passed."
