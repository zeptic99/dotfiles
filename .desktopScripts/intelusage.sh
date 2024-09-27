#!/bin/bash

# This script finds the GPU busy/render time for all processes using the Intel GPU.

# Loop through all processes using /dev/dri/card0 (the Intel GPU device)
for pid in $(lsof /dev/dri/card0 | awk '{print $2}' | grep -E '^[0-9]+$' | sort -u); do
    # Check if the process directory exists
    if [[ -d "/proc/$pid/fdinfo" ]]; then
        # Loop through all file descriptors of the process
        for fd in /proc/$pid/fdinfo/*; do
            # Check if the file descriptor refers to the GPU (drm-related descriptor)
            if grep -q 'drm-engine' "$fd"; then
                # Extract and display the GPU usage information
                echo "Process PID: $pid"
                echo "GPU Usage Info:"
                cat "$fd" | grep -E 'drm-busy|drm-engine-class'
                echo "-----------------------------"
            fi
        done
    fi
done
