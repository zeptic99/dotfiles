#!/bin/bash

while true; do
    # Try to remove the nvidia_drm module
    output=$(modprobe -r nvidia_drm 2>&1)

    # Check if the output contains the "module in use" error
    if echo "$output" | grep -q "modprobe: FATAL: Module nvidia_drm is in use."; then
        echo "nvidia_drm is in use, waiting and retrying..."
        sleep 0.5
    else
        echo "Great success!"
        break
    fi
done

# Try to remove the nvidia_modeset module after nvidia_drm
modprobe -r nvidia_modeset
modprobe -r nvidia

virsh nodedev-detach pci_0000_0d_00_0
virsh nodedev-detach pci_0000_0d_00_1

modprobe vfio-pci
