AddPackage antimicrox
AddPackage cachyos-gaming-applications
AddPackage cachyos-gaming-meta
AddPackage gamemode
AddPackage gamescope
AddPackage goverlay
AddPackage joyutils
AddPackage lact-git
AddPackage lib32-gamemode
AddPackage lib32-mesa-git
AddPackage lutris
AddPackage mangohud
AddPackage memtest_vulkan
AddPackage mesa-git
AddPackage mesa-utils
AddPackage nvtop
AddPackage openrgb
AddPackage protonup-qt
AddPackage python-pytorch-rocm
AddPackage rocm-hip-sdk
AddPackage rocm-opencl-sdk
AddPackage sunshine
AddPackage tuxclocker
AddPackage umu-launcher
AddPackage vulkan-tools
AddPackage wine-cachyos
AddPackage xpadneo-dkms
AddPackage --foreign alvr
AddPackage --foreign alvr-launcher-bin
AddPackage --foreign ds4drv
AddPackage --foreign dxvk-bin
AddPackage --foreign lib32-mangohud-git
AddPackage --foreign libva-vdpau-driver
AddPackage --foreign lovr
AddPackage --foreign ludusavi-bin
AddPackage --foreign minecraft-launcher
AddPackage --foreign monado-git
AddPackage --foreign opencomposite-git
AddPackage --foreign oversteer
AddPackage --foreign ovras
AddPackage --foreign portproton
AddPackage --foreign proton-cachyos-launcher
AddPackage --foreign protontricks-git
AddPackage --foreign rofi-games
AddPackage --foreign vkbasalt
AddPackage --foreign wivrn-full-git
AddPackage --foreign xrizer

CreateDir /etc/openrgb
CopyFile /etc/bash_completion.d/flydigictl
CopyFile /etc/dbus-1/system.d/flydigid.conf
CopyFile /etc/lact/config.yaml
CreateLink /etc/systemd/system/multi-user.target.wants/lactd.service /usr/lib/systemd/system/lactd.service
CopyFile /usr/bin/flydigictl 755
CopyFile /usr/bin/flydigid 755
CopyFile /usr/lib/systemd/system/flydigid.service
CopyFile /usr/share/dbus-1/system-services/com.pipe01.flydigi.Gamepad.service
