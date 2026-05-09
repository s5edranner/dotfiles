if status is-interactive
# Commands to run in interactive sessions can go here
end

alias c='clear'
alias die='shutdown now'
alias chypr='vim ~/.config/hypr/hyprland.lua'
alias rain='~/.rain/build/terminal-rain'
alias cfish='vim ~/.config/fish/config.fish'
alias wheredidmyfreediskspacego='sudo du -ah / | sort -rh | head -n 20'
alias yay-fzf='yay -Slq | fzf --preview "yay -Si {1}" --layout=reverse | xargs -ro yay --needed -S'
alias zavod='~/Downloads/Factorio_Linux/factorio-space-age_linux_2.0.76/factorio/bin/x64/factorio'
