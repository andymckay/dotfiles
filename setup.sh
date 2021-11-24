alias e=code
alias a="git grep"
alias g="git"
gpush () {
  git push --set-upstream origin "$(git rev-parse --abbrev-ref HEAD)"
}

gpushforce () {
  git push --force-with-lease -u origin "$(git rev-parse --abbrev-ref HEAD)"
}

alias gl="git branch -l"
alias gdefault="git branch -l | grep \"^\*\" | cut -f2 -d' '"
alias gcb="git pull && git branch $1 && git checkout -b $1"
alias gs="git checkout $1"
alias gsd="git branch -l | grep \"^\*\" | cut -f2 -d' ' | git checkout"
alias gri="git rebase -i main"
alias glast="git log -n 1 -p"
