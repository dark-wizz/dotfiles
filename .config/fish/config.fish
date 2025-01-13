if status is-interactive
    # Commands to run in interactive sessions can go here
end
# akram
set -x HYPRSHOT_DIR /home/akram/Pictures/screenshots
set -x EDITOR nvim

alias cd z
alias S "sudo pacman -S"
alias R "sudo pacman -S"

zoxide init fish | source
