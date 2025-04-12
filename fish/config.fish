set -g fish_greeting
fish_vi_key_bindings

# alias
alias c='clear'
alias nv='nvim'
alias l='eza -lh --icons=auto'
alias ls='eza -l --icons=auto'
alias ll='eza -lha --icons=auto --sort=name --group-directories-first'
alias ld='eza -lhD --icons=auto'
alias lt='eza --icons=auto --tree'
alias ff='fastfetch'
alias cat='bat'

# abbr
abbr cd 'z'
abbr sp 'sudo pacman'
abbr mkdir 'mkdir -p'

## bat-extras
abbr man 'batman'
abbr rg 'batgrep'

## git
abbr gst 'git status'
abbr ga 'git add'
abbr gpl 'git pull'
abbr gps 'git push'

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

