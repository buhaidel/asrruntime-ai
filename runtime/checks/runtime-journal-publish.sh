#!/usr/bin/env bash

source_file="/opt/asr-runtime/runtime/journal/runtime-journal.jsonl"
target_file="/opt/asr-runtime/demo/api/runtime-journal.json"

echo "[" > "$target_file"

first=true

while IFS= read -r line
do
  if [ "$first" = true ]; then
    first=false
  else
    echo "," >> "$target_file"
  fi

  echo "$line" >> "$target_file"

done < "$source_file"

echo "]" >> "$target_file"
