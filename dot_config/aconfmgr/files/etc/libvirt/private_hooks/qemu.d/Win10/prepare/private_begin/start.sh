#!/bin/sh

sleep 1

modprobe -r nvidia_drm
modprobe -r nvidia_modeset
modprobe -r nvidia
modprobe -r i2c_nvidia_gpu
modprobe -r nvidia_uvm
# Detach GPU devices from host
# Use your GPU and HDMI Audio PCI host device
virsh nodedev-detach pci_0000_0d_00_0
virsh nodedev-detach pci_0000_0d_00_1

# Load vfio module
modprobe vfio-pci

sh /home/zeptic/zeptittyconf/.dotfiles/.desktopScripts/netbridge.sh
