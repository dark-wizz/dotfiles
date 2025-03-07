#!/bin/bash

# Check if glow is installed
if ! command -v glow &> /dev/null; then
  echo "Error: glow is not installed. Please install it first."
  exit 1
fi

# Get the current timestamp in the desired format for the log file name
TIMESTAMP=$(date +"%Y-%m-%d_%H:%M:%S.%3N")  # Format: YYYY-MM-DD_HH:MM:SS.milliseconds
LOG_FILE="${TIMESTAMP}_log.md"

# Capture all input arguments as a single string
INPUT="$*"

echo "$INPUT"

# Run the provided ChatGPT CLI command and log the output
ddgpt -cs darkwizz "$INPUT" | tee -a "$HOME/.cache/heylog/$LOG_FILE" | glow -p

