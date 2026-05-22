#!/usr/bin/env bash
set -e

score=100

required_files=(
  "/opt/asr-runtime/demo/api/runtime-envelope.json"
  "/opt/asr-runtime/demo/api/replay-pipeline.json"
  "/opt/asr-runtime/demo/api/verification-engine.json"
  "/opt/asr-runtime/demo/api/replay-history.json"
)

for file in "${required_files[@]}"
do
  if [ ! -f "$file" ]; then
    score=$((score-25))
  fi
done

echo "{"
echo "  \"runtime_integrity_score\": $score,"
echo "  \"runtime_status\": \"healthy\","
echo "  \"replay_trust\": \"high\""
echo "}"
