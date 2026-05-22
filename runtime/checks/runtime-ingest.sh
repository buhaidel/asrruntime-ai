#!/usr/bin/env bash
set -e

journal="/opt/asr-runtime/runtime/journal/runtime-journal.jsonl"

event_type="${1:-external_event}"
event_status="${2:-received}"

timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

echo "{\"event\":\"$event_type\",\"status\":\"$event_status\",\"timestamp\":\"$timestamp\"}" >> "$journal"

echo "Runtime event ingested."
