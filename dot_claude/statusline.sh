#!/bin/bash
# load standard input as JSON
input=$(cat)

# Get the usage status from the claude code
model=$(echo "$input" | jq -r '.model.display_name // "Claude"')
input_tokens=$(echo "$input" | jq -r '.context_window.total_input_tokens // "0"')
output_tokens=$(echo "$input" | jq -r '.context_window.total_output_tokens // "0"')
used=$(echo "$input" | jq -r '.context_window.used_percentage // "0"')
duration_ms=$(echo "$input" | jq -r '.cost.total_api_duration_ms // "0"')

# Chaneg the latency from msec to sec
latency=$(echo "scale=1; $duration_ms / 1000" | bc)

# display status line
echo "${model} | ${input_tokens}/${output_tokens} tokens | Context: ${used}% used | ${latency}s"
