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
alias cat='bat'
alias man='batman'
#
abbr cd 'z'
#abbr cf 'cd_fzf'
abbr sp 'sudo pacman'
abbr mkdir 'mkdir -p'
#
## git
abbr gst 'git status'
abbr ga 'git add'
abbr gpl 'git pull'
abbr gps 'git push'

#function cd_fzf
#  z "$(dirname "$(fd $argv -t f | fzf --preview 'bat --color=always {}')")"
#end

#
zoxide init fish | source
fzf --fish | source

