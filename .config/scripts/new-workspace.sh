#!/bin/bash

# Get the target monitor name from argument
MONITOR=$(hyprctl activeworkspace -j | jq -r '.monitor')

if [[ -z "$MONITOR" ]]; then
    echo "Usage: $0 <monitor_name>"
    exit 1
fi

# Get workspaces on the given monitor
WORKSPACES=$(hyprctl monitors -j | jq -r ".[] | select(.name == \"$MONITOR\") | .activeWorkspaceID, .reservedWorkspaces[]")

# Convert to array and sort numerically
WORKSPACE_LIST=($(echo "$WORKSPACES" | sort -n))

# Get the highest workspace number
LAST_WORKSPACE=${WORKSPACE_LIST[-1]}

# If no workspaces exist, start from 1
if [[ -z "$LAST_WORKSPACE" ]]; then
    NEW_WORKSPACE=1
else
    NEW_WORKSPACE=$((LAST_WORKSPACE + 1))
fi

# Create and switch to the new workspace
hyprctl dispatch workspace "$NEW_WORKSPACE"

echo "Switched to new workspace: $NEW_WORKSPACE on monitor: $MONITOR"

