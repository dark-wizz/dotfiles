if status is-interactive
    # Commands to run in interactive sessions can go here
end
# akram
set -x HYPRSHOT_DIR "$HOME/Pictures/screenshots"
set -x EDITOR nvim
set -x GTK_THEME Adwaita:dark
set -x PNPM_HOME "/home/akram/.local/share/pnpm"
set -x PATH "$PNPM_HOME:$PATH"

alias cd z
alias S "sudo pacman -S"
alias R "sudo pacman -S"
alias ls eza
alias hey, "ddgpt -cs darkwizz"
alias hey "$HOME/.config/scripts/ddgpt_frmt.sh"
alias p "paru --bottomup"

zoxide init fish | source
