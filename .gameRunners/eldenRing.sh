hyprctl dispatch exec [workspace 4 silent] "alacritty -e sh $HOME/zeptittyconf/.dotfiles/.desktopScripts/startGamescope.sh" &
hyprctl dispatch exec [workspace 11] "alacritty --hold -e "bash steam steam://rungameid/18335291918679801856"" &
hyprctl dispatch workspace 11
hyprctl dispatch movecursor 2222 1000
