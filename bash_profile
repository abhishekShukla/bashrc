parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

alias sbash='. ~/.bash_profile'

alias pud=pushd
alias pod=popd

alias please=sudo

alias pwdc='pwd|pbcopy'

alias c=clear

alias ..='cd ..'
alias ...='cd ../..'
alias ....=../../..
alias .....=../../../..
alias ......=../../../../..

alias g=git
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gc='git commit -v'
alias 'gc!'='git commit -v --amend'
alias gcmsg='git commit -m'
alias gd='git diff'
alias gpull='git pull origin $(git_current_branch)'
alias gpush='git push origin $(git_current_branch)'
alias gl='git pull'
alias gm='git merge'
alias gp='git push'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias grm='git rm'
alias gss='git status -s'
alias gs='git status'
alias gst='git stash'
alias gsta='git stash apply'
alias gstp='git stash pop'
alias gup='git pull --rebase'

alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -FLlb'

PATH=$PATH:/usr/local/sbin
