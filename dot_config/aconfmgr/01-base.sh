AddPackage amd-ucode
AddPackage base
AddPackage base-devel
AddPackage bash-completion
AddPackage bat
AddPackage bind
AddPackage btop
AddPackage cachyos-kernel-manager
AddPackage cachyos-keyring
AddPackage cachyos-mirrorlist
AddPackage cachyos-v3-mirrorlist
AddPackage cachyos-v4-mirrorlist
AddPackage cdrtools
AddPackage cloudflare-warp-bin
AddPackage cmatrix
AddPackage cowsay
AddPackage dkms
AddPackage downgrade
AddPackage efibootmgr
AddPackage evtest
AddPackage fastfetch
AddPackage figlet
AddPackage firejail
AddPackage git
AddPackage go
AddPackage htop
AddPackage i2c-tools
AddPackage inotify-tools
AddPackage iperf3
AddPackage iptables-nft
AddPackage iwd
AddPackage less
AddPackage linux
AddPackage linux-cachyos
AddPackage linux-cachyos-bore-lto
AddPackage linux-cachyos-bore-lto-headers
AddPackage linux-cachyos-headers
AddPackage linux-firmware
AddPackage linux-headers
AddPackage lshw
AddPackage man-db
AddPackage modprobed-db
AddPackage nano
AddPackage neofetch
AddPackage neovim
AddPackage network-manager-applet
AddPackage networkmanager
AddPackage nfs-utils
AddPackage ntfs-3g
AddPackage openbsd-netcat
AddPackage powertop
AddPackage python-pip
AddPackage python-virtualenv
AddPackage ranger
AddPackage rclone
AddPackage reflector
AddPackage ripgrep
AddPackage samba
AddPackage smartmontools
AddPackage stow
AddPackage tesseract-data-eng
AddPackage tk
AddPackage tmux
AddPackage tree
AddPackage udiskie
AddPackage vim
AddPackage wget
AddPackage whois
AddPackage wireless_tools
AddPackage wl-clipboard
AddPackage wtype
AddPackage xarchiver
AddPackage xdg-utils
AddPackage xsel
AddPackage yay
AddPackage yazi
AddPackage zip
AddPackage zoxide
AddPackage zram-generator
AddPackage zsh
AddPackage --foreign aconfmgr-git
AddPackage --foreign amdctl
AddPackage --foreign bridge-utils
AddPackage --foreign fancontrol-gui
AddPackage --foreign jmtpfs
AddPackage --foreign multitail
AddPackage --foreign nautilus-gnome-disks
AddPackage --foreign picotool
AddPackage --foreign zenpower3-dkms

CopyFile /etc/environment
CopyFile /etc/fancontrol
CopyFile /etc/fuse.conf
CopyFile /etc/modprobe.d/99-amdgpu-overdrive.conf
CopyFile /etc/modprobe.d/kvmfr.conf
CopyFile /etc/modules-load.d/kvmfr.conf
CopyFile /etc/pacman.conf
CopyFile /etc/pacman.d/mirrorlist
CreateFile /etc/samba/smb.conf > /dev/null
CopyFile /etc/security/limits.d/99-realtime.conf
CopyFile /etc/sudoers
CopyFile /etc/sudoers.d/00_zeptic 440
CopyFile /etc/sudoers.d/zeptic

CreateLink /etc/systemd/system/bluetooth.target.wants/bluetooth.service /usr/lib/systemd/system/bluetooth.service
CreateLink /etc/systemd/system/dbus-org.bluez.service /usr/lib/systemd/system/bluetooth.service
CreateLink /etc/systemd/system/multi-user.target.wants/lm_sensors.service /usr/lib/systemd/system/lm_sensors.service

CreateDir /etc/audisp
CreateDir /etc/audit/plugins.d 750
CreateDir /etc/audit/rules.d
CreateDir /etc/cdi
CreateDir /etc/cni/net.d 700
CreateDir /etc/userdb
CopyFile /etc/conf.d/lm_sensors
