#!/usr/bin/env bash
set -e
set -u

filename="$(pbpaste | head -n 1).txt"

if [[ -e "$filename" ]]; then
  echo "$filename already exists" 1>&2
  exit 1
fi

pbpaste | sed 1d | sed 1d > "$filename"

echo "created $filename"
