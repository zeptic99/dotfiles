# -----------------------------------------
# ACONFMGR IGNORE LIST FOR ARCH / CACHYOS
# -----------------------------------------

# 1. Package Managers & Containers (The big offenders)
IgnorePath '/var/lib/pacman/*'
IgnorePath '/var/cache/pacman/pkg/*'
IgnorePath '/var/lib/docker/*'
IgnorePath '/var/lib/flatpak/*'
IgnorePath '/var/lib/snapd/*'
IgnorePath '/var/lib/containerd/*'

# 2. Temporary Files & Caches
IgnorePath '/tmp/*'
IgnorePath '/var/tmp/*'
IgnorePath '/var/cache/*'
IgnorePath '/root/.cache/*'

# 3. System Logs & State Data
IgnorePath '/var/log/*'
IgnorePath '/var/lib/systemd/*'
IgnorePath '/var/lib/upower/*'
IgnorePath '/var/lib/AccountsService/*'
IgnorePath '/var/lib/colord/*'
IgnorePath '/var/lib/gdm/*'
IgnorePath '/var/lib/sddm/*'
IgnorePath '/var/lib/NetworkManager/*'
IgnorePath '/var/lib/bluetooth/*'

# 4. Auto-Generated Boot & Hardware Files
IgnorePath '/boot/initramfs-*'
IgnorePath '/boot/vmlinuz-*'
IgnorePath '/etc/udev/rules.d/*'
IgnorePath '/etc/udev/hwdb.bin'

# 5. Security Keys & Certificates (DO NOT PUT ON GITHUB)
IgnorePath '/etc/pacman.d/gnupg/*'
IgnorePath '/etc/ssl/certs/*'
IgnorePath '/etc/ca-certificates/extracted/*'
IgnorePath '/etc/ssh/ssh_host_*'
IgnorePath '/etc/NetworkManager/system-connections/*'

# 6. Miscellaneous Auto-Generated Noise
IgnorePath '/usr/share/mime/*'
IgnorePath '/usr/share/info/dir'
IgnorePath '/usr/lib/modules/*'
IgnorePath '/etc/ld.so.cache'
IgnorePath '/etc/resolv.conf'
IgnorePath '/etc/adjtime'
IgnorePath '/etc/mtab'
IgnorePath '/etc/dconf/*'
IgnorePath '/etc/fonts/conf.d/*'

# -----------------------------------------
# ROUND 2: SECURITY & SPECIFIC APPS
# -----------------------------------------

# Security Risks (NEVER PUT ON GITHUB)
IgnorePath '/var/lib/iwd/*'
IgnorePath '/var/lib/samba/private/*'
IgnorePath '/etc/shadow*'
IgnorePath '/etc/gshadow*'
IgnorePath '/etc/passwd-*'
IgnorePath '/etc/group-*'
IgnorePath '/var/db/sudo/lectured/*'

# Windows Bootloader
IgnorePath '/boot/EFI/Microsoft/*'

# Massive App States & Caches
IgnorePath '/var/lib/waydroid/*'
IgnorePath '/var/lib/dkms/*'
IgnorePath '/var/BlackmagicDesign/*'
IgnorePath '/var/lib/cloudflare-warp/*'
IgnorePath '/var/lib/lightdm/*'
IgnorePath '/var/lib/libvirt/qemu/nvram/*'

# Python Caches
IgnorePath '*/__pycache__/*'

# -----------------------------------------
# ROUND 3: FINAL SYSTEM STATE & CACHES
# -----------------------------------------

# Unique IDs and runtime states
IgnorePath '/etc/machine-id'
IgnorePath '/var/lib/alsa/asound.state'
IgnorePath '/var/lib/dhcpcd/*'
IgnorePath '/var/lib/samba/*.tdb'
IgnorePath '/var/lib/optimus-manager/tmp/*'
IgnorePath '/var/lib/lightdm-data/*'

# Virtual Machine dynamic states
IgnorePath '/var/lib/libvirt/qemu/domain-*'
IgnorePath '/var/lib/libvirt/qemu/save/*'
IgnorePath '/var/lib/libvirt/qemu/dump/*'
IgnorePath '/var/lib/libvirt/qemu/ram/*'
IgnorePath '/var/lib/libvirt/dnsmasq/*'

# UI and Icon Caches
IgnorePath '*/icon-theme.cache'
IgnorePath '*/giomodule.cache'
IgnorePath '*/loaders.cache'
IgnorePath '*/immodules.cache'
IgnorePath '*/gconv-modules.cache'

# Pacman backup files
IgnorePath '*.pacnew'
IgnorePath '*.pacsave'
IgnorePath '*.bak'
IgnorePath '*.OLD'

IgnorePath '/opt/*'
IgnorePath '/boot/*'

# Ignore manually compiled software and DaVinci Resolve drop-ins
IgnorePath '/usr/local/*'
IgnorePath '/usr/OFX/*'
IgnorePath '/usr/share/applications/com.blackmagicdesign.*'
IgnorePath '/usr/share/desktop-directories/com.blackmagicdesign.*'
IgnorePath '/usr/share/icons/hicolor/*/apps/blackmagicraw-*'
IgnorePath '/usr/share/icons/hicolor/*/mimetypes/*braw*'
IgnorePath '/usr/share/icons/hicolor/*/apps/DaVinci-*'
IgnorePath '/usr/share/icons/hicolor/*/mimetypes/*resolve*'

IgnorePath '*/.updated'
IgnorePath '/etc/.pwd.lock'
IgnorePath '/etc/X11/*.backup'
IgnorePath '/etc/X11/*original'
IgnorePath '/usr/share/glib-2.0/schemas/gschemas.compiled'
IgnorePath '/usr/share/applications/mimeinfo.cache'
IgnorePath '/lost+found/*'
IgnorePath '/usr/lib/udev/hwdb.bin'

# Ignore dynamically generated system lookups
IgnorePath '/usr/lib/ghc/*'
IgnorePath '/usr/share/fonts/.uuid'
IgnorePath '/usr/share/icons/*/icon-theme.cache'

# Ignore language-specific package manager states (if you use them)
IgnorePath '/usr/lib/python*/site-packages/*'
IgnorePath '/usr/lib/node_modules/*'

# Ignore auto-generated man page indexes
IgnorePath '/usr/share/man/mandb.index'

# Ignore the actual hard drive images (The state)
IgnorePath '/var/lib/libvirt/images/*'

# Keep tracking /etc/libvirt/ (The logic)
# (No IgnorePath needed for /etc/libvirt/ - we want those!)
#
# # Ignore the locale binary (we track the config /etc/locale.gen instead)
IgnorePath '/usr/lib/locale/locale-archive'

# Ignore unique system/machine identifiers
IgnorePath '/var/lib/libvirt/qemu/*'
IgnorePath '/var/lib/dbus/machine-id'
IgnorePath '/var/lib/lastlog/lastlog2.db'

IgnorePath '/var/lib/rpcbind/*'
IgnorePath '/var/lib/tpm2-tss/*'
IgnorePath '/pico3/*'

# Ignore auto-generated perl/vim metadata
IgnorePath '/usr/share/perl5/vendor_perl/XML/SAX/ParserDetails.ini'
IgnorePath '/usr/share/vim/vimfiles/doc/tags'

# Ignore the "Ghost" Intel Vulkan config (you are on AMD now)
IgnorePath '/usr/share/vulkan/icd.d/intel.json'

# Ignore DaVinci Resolve stray panel APIs
IgnorePath '/usr/lib/libDaVinciPanelAPI.so'
IgnorePath '/usr/lib/libFairlightPanelAPI.so'

# Ignore auto-generated kernel presets
IgnorePath '/etc/mkinitcpio.d/*.preset'
IgnorePath '/etc/mkinitcpio.conf'

# Ignore dynamic caches and systemd states
IgnorePath '/usr/lib/vlc/plugins/plugins.dat'
IgnorePath '/var/lib/plymouth/boot-duration'
IgnorePath '/var/lib/misc/dnsmasq.waydroid0.leases'
IgnorePath '/var/lib/machines/*'
IgnorePath '/var/lib/portables/*'
IgnorePath '/var/lib/private/*'

# Ignore Java environment symlinks (managed by archlinux-java)
IgnorePath '/usr/lib/jvm/default'
IgnorePath '/usr/lib/jvm/default-runtime'

IgnorePath '/etc/passwd'
IgnorePath '/etc/group'
IgnorePath '/etc/subuid'
IgnorePath '/etc/subgid'

IgnorePath '/etc/makepkg.conf.d/rust.conf'

IgnorePath '/usr/lib/graphviz/config8'
IgnorePath '/usr/lib/libcurl-compat.so.4'
IgnorePath '/usr/lib32/libcurl-compat.so.4'
IgnorePath '/usr/share/applications/defaults.list'
IgnorePath '/var/lib/BrlAPI'
IgnorePath '/var/lib/brltty'
IgnorePath '/var/lib/geoclue'
IgnorePath '/var/lib/libuuid'
IgnorePath '/var/lib/machines'
IgnorePath '/var/lib/portables'
IgnorePath '/var/lib/private'
IgnorePath '/pico3'
IgnorePath '/lost+found'

# DaVinci Resolve literal paths
IgnorePath '/etc/xdg/menus/applications-merged/com.blackmagicdesign.resolve.menu'
IgnorePath '/usr/lib/udev/rules.d/75-davincikb.rules'
IgnorePath '/usr/lib/udev/rules.d/75-davincipanel.rules'
IgnorePath '/usr/lib/udev/rules.d/75-sdx.rules'

IgnorePath '/etc/fstab'
IgnorePath '/etc/hostname'
IgnorePath '/etc/locale.gen'
IgnorePath '/etc/locale.conf'
IgnorePath '/etc/os-release'
IgnorePath '/etc/scx_loader.toml'
IgnorePath '/etc/shells'

