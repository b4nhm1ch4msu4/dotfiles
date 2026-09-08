set -g fish_greeting
set -U EDITOR nvim
set -U ZK_NOTEBOOK_DIR "/home/tienp/Documents/notasys/"
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
# alias h='hyprland'

# abbr
abbr cd z
abbr sp 'sudo pacman'
abbr mkdir 'mkdir -p'

## bat-extras
# abbr cat 'bat'
abbr man batman
# abbr grep 'batgrep'

## git
abbr gs 'git status'
abbr ga 'git add'
abbr gpl 'git pull'
abbr gps 'git push'
abbr lg lazygit
abbr wifi 'nmcli device wifi'

## zk 
abbr zc 'cd $ZK_NOTEBOOK_DIR; zk conf'
# abbr zn 'cd $ZK_NOTEBOOK_DIR; zk new'
abbr zo 'cd $ZK_NOTEBOOK_DIR; zk open'
abbr zd 'cd $ZK_NOTEBOOK_DIR; zk daily'
abbr zl 'cd $ZK_NOTEBOOK_DIR; zk ls'
abbr zu 'cd $ZK_NOTEBOOK_DIR; zk update'
abbr zs 'cd $ZK_NOTEBOOK_DIR; zk sync'

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

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
