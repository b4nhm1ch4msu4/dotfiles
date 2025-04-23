set -g fish_greeting
set -U EDITOR nvim
fish_vi_key_bindings

# alias
alias c='clear'
alias n='nvim'
alias l='eza -lh --icons=auto'
alias ls='eza -l --icons=auto'
alias ll='eza -lha --icons=auto --sort=name --group-directories-first'
alias ld='eza -lhD --icons=auto'
alias lt='eza --icons=auto --tree'
alias ff='fastfetch'

# abbr
abbr cd 'z'
abbr sp 'sudo pacman'
abbr mkdir 'mkdir -p'

## bat-extras
abbr cat 'bat'
abbr man 'batman'
abbr grep 'batgrep'

## git
abbr gs 'git status'
abbr ga 'git add'
abbr gpl 'git pull'
abbr gps 'git push'
abbr lg 'lazygit'

function y
  set tmp (mktemp -t "yazi-cwd.XXXXXX")
  yazi $argv --cwd-file="$tmp"
  if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
    builtin cd -- "$cwd"
  end
  rm -f -- "$tmp"
end

#function cd_fzf
#  z "$(dirname "$(fd $argv -t f | fzf --preview 'bat --color=always {}')")"
#end

# source
zoxide init fish | source
fzf --fish | source
