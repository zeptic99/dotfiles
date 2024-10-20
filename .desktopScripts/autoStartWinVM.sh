echo 'Zeptic Dynamic VFIO Scripts v0.1'
echo Checking nvidia module use status...

while true; do
    # Try to remove the nvidia_drm module
    output=$(modprobe -r nvidia_drm 2>&1)

    # Check if the output contains the "module in use" error
    if echo "$output" | grep -q "modprobe: FATAL: Module nvidia_drm is in use."; then
        echo "nvidia_drm is in use, manual intervention is required..."
        sleep 0.5
    else
        echo "Great success!"
        break
    fi
done

echo Starting Win10 VM...

sudo virsh start Win10

su -c 'looking-glass-client -F' zeptic
