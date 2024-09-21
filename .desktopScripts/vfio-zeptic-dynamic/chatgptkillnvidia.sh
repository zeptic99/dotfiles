#!/bin/bash

while true; do
    # Try to remove the nvidia_drm module
    output=$(echo "modprobe: FATAL: Module nvidia_drm is in use.")

    # Check if the output contains the "module in use" error
    if echo "$output" | grep -q "modprobe: FATAL: Module nvidia_drm is in use."; then
        echo "nvidia_drm is in use, waiting and retrying..."
        sleep 0.5
    else
        echo "Great success!"
        break
    fi
done

echo done
