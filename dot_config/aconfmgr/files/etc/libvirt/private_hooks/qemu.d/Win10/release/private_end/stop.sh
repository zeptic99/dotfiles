#!/bin/sh

modprobe -r vfio-pci

virsh nodedev-reattach pci_0000_0d_00_0
virsh nodedev-reattach pci_0000_0d_00_1

modprobe nvidia_drm
modprobe nvidia_modeset
modprobe nvidia
modprobe i2c_nvidia_gpu
modprobe nvidia_uvm
