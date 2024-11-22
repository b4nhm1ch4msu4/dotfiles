set -g fish_greeting
fish_vi_key_bindings
alias c='clear'
alias nv='nvim'
alias l='eza -lh --icons=auto'
alias ls='eza -l --icons=auto'
alias ll='eza -lha --icons=auto --sort=name --group-directories-first'
alias ld='eza -lhD --icons=auto'
alias lt='eza --icons=auto --tree'
alias ff='fastfetch'

abbr sup 'sudo pacman'
abbr mkdir 'mkdir -p'

zoxide init fish | source
