#!/usr/bin/env bash
set -e

echo "Starting ASR self-healing check..."

if ./runtime/checks/asr-health-check.sh; then
  echo "health=pass"
else
  echo "health=fail"
  echo "action=restart_container"
  docker compose -f runtime/docker-compose.yml restart
fi

if ./runtime/checks/replay-integrity-check.sh; then
  echo "replay_integrity=pass"
else
  echo "replay_integrity=fail"
  echo "action=archive_current_state"
  ./runtime/checks/replay-archive-rotation.sh
fi

echo "ASR self-healing cycle completed."
