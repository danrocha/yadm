#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Show PR Number
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🐦
# @raycast.packageName Bird Utils

# Documentation:
# @raycast.description Opens the app deployed in the current PR.
# @raycast.author Daniel da Rocha
# @raycast.authorURL https://github.com/danrocha

cd /Users/danieldarocha/Bird/birdeatsbug
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
CURRENT_PR=$(gh pr list --state=open | grep "$CURRENT_BRANCH" | awk '{print $1}')

echo "🐙 #$CURRENT_PR  🌱 $CURRENT_BRANCH"
