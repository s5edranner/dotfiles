if status is-interactive
    # interactive settings here (aliases, key bindings, etc.)
end

alias l='ls'
alias c='clear' # lat
alias die='shutdown now'
alias re='reboot'
alias cwaybar='cd && vim .config/waybar/config.jsonc'
alias chypr='cd && vim .config/hypr/hyprland.conf'
alias cfish='cd && vim .config/fish/config.fish'
alias cmako='cd && vim .config/mako/config'
alias IPhone='nmcli d wifi c IPhone'
alias WLAN='nmcli d wifi c WLAN1-002560'
alias solve='expr'
alias calc='expr'
alias equals='expr'
alias SirTerminal,MayYouPleaseShowMeFastfetchFor10secondsAndSolveThisMathematicalEquation:='fastfetch && sleep 10 && expr'
alias last10seconds='fastfetch && sleep 10 && shutdown now'
alias mario='sudo pacman'
alias pacmanbutfastfetch='fastfetch && pacman'
alias yaybutfasffetch='fastfetch && yay'
alias lsbutfastfetch='fastfetch && ls'
alias cdbutfastfetch='fastfetch && cd'
alias sudorm-rfslashsnowflake--no-preserve-rootbutfastfetch='fastfetch && sleep 30 && echo "SIKE!"'
alias blt='bluetoothctl'
alias SirTerminal,MayYouPleaseShowMeFastfetchFor30SecondsAndAfterSendMeThisStupidASFrussianLetter='fastfetch && sleep 30 && echo "ы"'
alias SirTerminal,MayYouPleaseShowMeFastfetchFor30SecondsAndAfterSendMeThisLessStupidRussianLetter='fastfetch && sleep 30 && echo "э"'

function fish_title
    echo "kitty~"
end
