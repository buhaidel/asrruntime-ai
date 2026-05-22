#!/usr/bin/env bash
set -e

journal="/opt/asr-runtime/runtime/journal/runtime-journal.jsonl"

timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

if tail -n 20 "$journal" | grep -q "runtime_failure_injected"; then

  echo "{\"event\":\"runtime_recovery_started\",\"status\":\"recovering\",\"timestamp\":\"$timestamp\"}" >> "$journal"

  echo "Recovery trigger activated."

else

  echo "No runtime failure detected."

fi
