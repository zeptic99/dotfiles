# Dotfiles

This repository contains configuration files and settings for most of the software I use, including some Windows applications. I have utilized GNU Stow to manage symlinks for a clean and organized setup.

## Installation

To use these dotfiles, follow these steps:

### Prerequisites

1. **Install GNU Stow**

   - **Linux (Debian/Ubuntu-based)**

     ```bash
     sudo apt-get install stow
     ```

   - **Linux (Fedora/RHEL-based)**

     ```bash
     sudo dnf install stow
     ```

   - **Linux (Arch-based)**

     ```bash
     sudo pacman -S stow
     ```

   - **macOS**

     ```bash
     brew install stow
     ```

### Clone the Repository

1. Clone this repository to your home directory or preferred location:

   ```bash
   git https://github.com/zeptic99/dotfiles.git ~/.dotfiles
   ```

### Symlink configuration files

1. Change to the directory where the dotfiles are located:
    
    ```bash
    cd ~/.dotfiles
    ```

2. Use GNU Stow to create symlinks for the all the configuration files. 

    ```bash
    stow -t $HOME .
    ```

3. Alternatively, select only specific configuration packages to be symlinked. For example:

    ```bash
    stow -t $HOME .zshrc
    stow -t $HOME .config/
    stow -t $HOME .config/hypr
    ```

### Supported Platforms

Linux: Tested primarily on Arch Linux. The provided configurations should work on other Linux distributions with GNU Stow installed. This includes Android, through the use of [**Termux**](https://github.com/termux/termux-app)

macOS: Configurations should work on macOS, but some adjustments may be needed based on your specific setup.

Windows: Partial support. Configuration files need to be manually copied.

 ### Notes

Arch Linux: The dotfiles were created on Arch Linux and are optimized for this distribution.

Windows specific configurations: The configration (and or) settings files for Windows programs are included here merely for me to be able to access and share these with ease through this repository. Following the install instructions will NOT put these files where they should be. They require manual copying over to their respective directories.

### Contributing

Feel free to fork this repository and submit pull requests if you have improvements or additional configurations that could benefit others.

