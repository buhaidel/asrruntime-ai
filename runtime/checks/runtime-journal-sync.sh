#!/usr/bin/env bash

while true
do
  cp /opt/asr-runtime/runtime/journal/runtime-journal.jsonl \
     /opt/asr-runtime/demo/api/runtime-journal.jsonl

  sleep 5
done
