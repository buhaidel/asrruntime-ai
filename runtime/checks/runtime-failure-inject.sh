#!/usr/bin/env bash
set -e

journal="/opt/asr-runtime/runtime/journal/runtime-journal.jsonl"

timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

echo "{\"event\":\"runtime_failure_injected\",\"status\":\"critical\",\"timestamp\":\"$timestamp\"}" >> "$journal"

echo "Runtime failure injected."
