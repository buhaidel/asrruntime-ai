#!/usr/bin/env bash

while true
do

  /opt/asr-runtime/runtime/checks/runtime-sequence-check.sh > /dev/null

  /opt/asr-runtime/runtime/checks/runtime-recovery-trigger.sh > /dev/null

  /opt/asr-runtime/runtime/checks/runtime-journal-publish.sh > /dev/null

  /opt/asr-runtime/runtime/checks/runtime-integrity-score.sh > /dev/null

  sleep 15

done
