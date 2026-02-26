# just some dotfiles.

Well, technically, it’s a complete, reproducible blueprint of my entire Arch Linux machine. But mostly just dotfiles.

I got tired of symlink spaghetti (RIP GNU Stow) and forgetting which obscure `pacman` packages I installed 8 months ago. So, this repository tracks *everything*.

It is split into two halves:

1. **User Space (`~/.config/`):** Managed by [chezmoi](https://chezmoi.io/). This handles my Hyprland setup, Waybar, Alacritty, Neovim, etc.
2. **Root Space (`/` and `/etc/`):** Managed by [aconfmgr](https://github.com/CyberShadow/aconfmgr). This tracks every single Arch package I have installed, all my systemd services, and my root config files. If a package isn't written in my `.sh` blueprint, `aconfmgr` uninstalls it.

### How it works

* `chezmoi` securely holds the actual configuration files for my daily-driver apps.
* Inside `~/.config/aconfmgr/`, there are a bunch of shell scripts. These scripts dictate exactly what my system should look like at the root level.

### Rebuilding the machine from scratch

If my SSD catches fire tomorrow, I can install a base Arch ISO and run exactly two commands to completely clone my previous setup.

**1. Restore the User Space:**

```bash
# This pulls the repo and slaps the configs into ~/.config
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply zeptic99

```

**2. Restore the Root Space:**

```bash
# This downloads every package, applies /etc/ configs, and nukes any pre-installed bloat.
aconfmgr apply

```

### ⚠️ A friendly warning

If you are wandering in here to steal my Hyprland dots, go crazy. `chezmoi` makes it easy to grab what you want.

However, **do not** blindly run my `aconfmgr` scripts on your machine. It is declarative. If you run `aconfmgr apply`, it will aggressively delete every single package on your computer that isn't explicitly listed in my blueprint, effectively turning your computer into *my* computer. You have been warned!
