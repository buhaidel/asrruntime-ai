#!/usr/bin/env bash
set -e

journal="/opt/asr-runtime/runtime/journal/runtime-journal.jsonl"

timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

echo "{\"event\":\"economic_runtime_stress\",\"status\":\"critical\",\"timestamp\":\"$timestamp\"}" >> "$journal"

echo "Economic runtime stress injected."
