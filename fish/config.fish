if status is-interactive
# Commands to run in interactive sessions can go here
end

clear
neofetch
set -U fish_greeting ""
starship init fish | source
alias gc='git commit -m "Initial commit"'
alias gp='git push'
alias ga='git add .'
