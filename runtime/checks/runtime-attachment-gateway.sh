#!/usr/bin/env bash
set -e

journal="/opt/asr-runtime/runtime/journal/runtime-journal.jsonl"

source_name="${1:-external_runtime}"
event_name="${2:-workflow_event}"
event_status="${3:-active}"

timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

echo "{\"source\":\"$source_name\",\"event\":\"$event_name\",\"status\":\"$event_status\",\"timestamp\":\"$timestamp\"}" >> "$journal"

echo "Runtime attachment event ingested."
