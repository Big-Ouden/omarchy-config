# +--------+
# |   Git  |
# +--------+


alias gst="git status"
alias g="lazygit"
alias ga="git add"
alias gaa="git add --all"
alias gav="git add --verbose"
alias gb="git branch"
alias gba="git branch -a"
alias gbD="git brach --delete"
alias gbsup='git branch --set-upstream-to="origin/$(git_current_branch)"'
alias gco='git checkout'
alias gcl="git clone --recursive"
alias gcf="git config --list"
alias gc="git commit"
alias gcm='git commit -m'
alias grm="git rm"
alias grmc="git rm --cached"
alias glog="git log --stat"
alias gglog="git log --graph"
alias glod='command git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"'
alias gm="git merge"
alias gp="git push"
alias gpl="git pull"
alias gplr="git pull --rebase"
alias gdiff="git diff -w --word-diff=color --ignore-space-at-eol"
alias gsh='command git show'
alias gsps='command git show --pretty=short --show-signature'
alias gsw="git switch"
alias gta="git tag --annoate"



# +--------+
# | Editor |
# +--------+

alias nano="nvim"
alias vi="nvim"
alias vim="nvim"


# +------+
# | misc |
# +------+

alias less='less -FSRXc'                    # Preferred 'less' implementation
alias wget='wget -c'                        # Preferred 'wget' implementation (resume download)
alias c='clear'                             # c:            Clear terminal display
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias src='source $HOME/.zshrc'                # src:          Reload .bashrc file

open() {
  xdg-open "$@" >/dev/null 2>&1 &
}


alias ff="fzf --preview 'bat --style=numbers --color=always {}'"

# Tools
alias d='docker'
alias r='rails'
n() { if [ "$#" -eq 0 ]; then nvim .; else nvim "$@"; fi; }




# +------+
# | grep |
# +------+

alias grep="grep -P -i --color=auto"

# +------+
# | ping |
# +------+

alias pg='ping 8.8.8.8'


# +--------+
# | pacman |
# +--------+

alias paci='sudo pacman -S'               # install
alias pachi='sudo pacman -Ql'             # Pacman Has Installed - what files where installed in a package
alias pacs='sudo pacman -Ss'              # search
alias pacu='sudo pacman -Syu'             # update
alias pacr='sudo pacman -R'               # remove package but not dependencies
alias pacrr='sudo pacman -Rs'             # remove package with unused dependencies by other softwares
alias pacrc='sudo pacman -Sc'             # remove pacman's cache
alias pacro='pacman -Rns $(pacman -Qtdq)'
alias pacrl='rm /var/lib/pacman/db.lck'   # pacman remove locks
alias pacls="sudo pacman -Qe"
alias pacc='sudo pacman -Sc'
alias paccc='sudo pacman -Scc'            # empty the whole cache



# +----+
# | ls |
# +----+


# File system
if command -v eza &> /dev/null; then
  alias ls='eza  --group-directories-first --icons=auto'
  alias lsa='ls -a'
  alias lt='eza --tree --level=2  --icons --git'
  alias lta='lt -a'
fi


# +----+
# | cd |
# +----+

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

if command -v zoxide &> /dev/null; then
  alias cd="zd"
  zd() {
    if [ $# -eq 0 ]; then
      builtin cd ~ && return
    elif [ -d "$1" ]; then
      builtin cd "$1"
    else
      z "$@" && printf "\U000F17A9 " && pwd || echo "Error: Directory not found"
    fi
  }
fi


# +---------+
# | Typst   |
# +---------+
alias "typst init"="typst init --package-path=$TYPST_PACKAGE_PATH"



# +--------+
# | Custom |
# +--------+


# Remplacement de hostname
alias hostname="hostnamectl hostname"
alias untar="tar xvf"
# Pour faire fonctionner clear / CTRL-L / les couleurs etc
# Voir la doc : https://sw.kovidgoyal.net/kitty/faq/
alias ssh="TERM=xterm ssh"

alias gcc12="/home/bigouden/documents/cours/coav/tools/gcc-12.2.0/bin/gcc"
alias g++12="/home/bigouden/documents/cours/coav/tools/gcc-12.2.0/bin/g++"

