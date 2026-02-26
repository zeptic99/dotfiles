AddPackage audacity
AddPackage blueman
AddPackage bluez-utils
AddPackage calf
AddPackage carla
AddPackage easyeffects
AddPackage gst-plugin-pipewire
AddPackage guitarix
AddPackage kdenlive
AddPackage libpulse
AddPackage libva-utils
AddPackage libvdpau-va-gl
AddPackage lsp-plugins
AddPackage mda.lv2
AddPackage obs-studio
AddPackage pavucontrol
AddPackage pipewire
AddPackage pipewire-alsa
AddPackage pipewire-jack
AddPackage pipewire-pulse
AddPackage qjackctl
AddPackage v4l2loopback-dkms
AddPackage vlc
AddPackage vlc-plugins-all
AddPackage wireplumber
AddPackage --foreign deepfilternet-demos-git
AddPackage --foreign pipecontrol
AddPackage --foreign roomeqwizard

CreateDir /etc/colord '' colord colord
CreateLink /etc/systemd/user/pipewire-session-manager.service /usr/lib/systemd/user/wireplumber.service
CreateLink /etc/systemd/user/pipewire.service.wants/wireplumber.service /usr/lib/systemd/user/wireplumber.service
CreateLink /etc/systemd/user/sockets.target.wants/pipewire-pulse.socket /usr/lib/systemd/user/pipewire-pulse.socket
CreateLink /etc/systemd/user/sockets.target.wants/pipewire.socket /usr/lib/systemd/user/pipewire.socket
