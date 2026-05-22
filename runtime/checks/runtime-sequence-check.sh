#!/usr/bin/env bash
set -e

journal="/opt/asr-runtime/runtime/journal/runtime-journal.jsonl"

if tail -n 20 "$journal" | grep -q "workflow_failure"; then
  echo "{"
  echo "  \"sequence_validation\": \"warning\","
  echo "  \"runtime_state\": \"failure_detected\""
  echo "}"
else
  echo "{"
  echo "  \"sequence_validation\": \"healthy\","
  echo "  \"runtime_state\": \"stable\""
  echo "}"
fi
