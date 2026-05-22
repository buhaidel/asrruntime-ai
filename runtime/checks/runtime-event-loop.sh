#!/usr/bin/env bash

journal="/opt/asr-runtime/runtime/journal/runtime-journal.jsonl"

while true
do
  timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

  echo "{\"event\":\"runtime_cycle\",\"status\":\"active\",\"timestamp\":\"$timestamp\"}" >> "$journal"

  sleep 30
done
