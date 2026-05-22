#!/usr/bin/env bash
set -e

echo "=== ASR FULL RUNTIME CYCLE START ==="

./runtime/checks/asr-health-check.sh

./runtime/checks/replay-integrity-check.sh

./runtime/checks/replay-continuity-check.sh

./runtime/checks/runtime-integrity-score.sh

./runtime/checks/simulated-runtime-event.sh

./runtime/checks/replay-archive-rotation.sh

echo "=== ASR FULL RUNTIME CYCLE COMPLETE ==="
