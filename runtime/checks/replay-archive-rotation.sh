#!/usr/bin/env bash
set -e

SOURCE="/opt/asr-runtime/demo/api/replay-history.json"
ARCHIVE_DIR="/opt/asr-runtime/runtime/archive"

timestamp=$(date +%Y%m%d-%H%M%S)

cp "$SOURCE" "$ARCHIVE_DIR/replay-history-$timestamp.json"

echo "Replay archive snapshot created:"
echo "$ARCHIVE_DIR/replay-history-$timestamp.json"
