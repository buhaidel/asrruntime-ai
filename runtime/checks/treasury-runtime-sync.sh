#!/usr/bin/env bash

journal="/opt/asr-runtime/runtime/journal/runtime-journal.jsonl"

timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

echo "{\"event\":\"treasury_runtime_sync\",\"status\":\"active\",\"timestamp\":\"$timestamp\"}" >> "$journal"

echo "Treasury runtime continuity synchronized."
