#!/usr/bin/env bash
set -e

journal="/opt/asr-runtime/runtime/journal/runtime-journal.jsonl"

timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

echo "{\"event\":\"external_runtime_ingestion\",\"status\":\"received\",\"timestamp\":\"$timestamp\"}" >> "$journal"

echo "Simulated runtime event appended."
