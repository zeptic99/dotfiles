#sudo kill -SIGKILL $(lsof /dev/nvidia0 |
#    /bin/grep --only-matching --perl-regexp "(^\S+)( )\K([0-9]+)" |
#    tr '\n' ' ')
rmmod --force nvidia_drm
rmmod --force nvidia_modeset
rmmod --force nvidia

virsh nodedev-detach pci_0000_0d_00_0
virsh nodedev-detach pci_0000_0d_00_1

modprobe vfio-pci
