#!/bin/sh

set -e

if [ -z "$GITHUB_EVENT_PATH" ]; then
  echo "\$GITHUB_EVENT_PATH" not found
  exit 1
fi

jq -r $2 "$GITHUB_EVENT_PATH" > $1
