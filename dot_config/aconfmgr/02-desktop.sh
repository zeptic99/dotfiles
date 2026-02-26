AddPackage feh
AddPackage foot
AddPackage gnu-free-fonts
AddPackage grim
AddPackage hyprland
AddPackage hyprpaper
AddPackage kvantum
AddPackage noto-fonts
AddPackage noto-fonts-cjk
AddPackage polkit-kde-agent
AddPackage sddm
AddPackage slurp
AddPackage terminus-font
AddPackage ttf-firacode-nerd
AddPackage ttf-liberation
AddPackage xdg-desktop-portal-hyprland
AddPackage xorg-server
AddPackage xorg-xhost
AddPackage xorg-xinit
AddPackage xorg-xinput
AddPackage xorg-xrandr
AddPackage xorg-xwayland
AddPackage --foreign otf-font-awesome-5
AddPackage --foreign rofi-lbonn-wayland-git
AddPackage --foreign smile
AddPackage --foreign ttf-ms-win11-auto
AddPackage --foreign ttf-ms-win11-auto-japanese
AddPackage --foreign ttf-ms-win11-auto-korean
AddPackage --foreign ttf-ms-win11-auto-other
AddPackage --foreign ttf-ms-win11-auto-sea
AddPackage --foreign ttf-ms-win11-auto-thai
AddPackage --foreign ttf-ms-win11-auto-zh_cn
AddPackage --foreign ttf-ms-win11-auto-zh_tw

CopyFile /etc/sddm.conf.d/autologin.conf
CopyFile /etc/xdg/awesome/rc.lua
CreateLink /etc/systemd/system/display-manager.service /usr/lib/systemd/system/sddm.service
CopyFile /etc/systemd/system/post-sddm.service
CopyFile /etc/systemd/system/pre-sddm.service
CreateLink /etc/systemd/user/graphical-session-pre.target.wants/xdg-user-dirs.service /usr/lib/systemd/user/xdg-user-dirs.service
