WHITE=$(tput setaf 7)
GREEN=$(tput setaf 2)
BOLD=$(tput bold)
RESET=$(tput sgr0)

PS1='\[$BOLD\]\[$WHITE\]\w\[$GREEN\]$(__git_ps1 "(%s)")\[$RESET\] $ '

source $HOME/.git-completion.bash
source $HOME/.virtualenvwrapper

alias ll='ls -al'
alias a="ack --nobreak --noheading --literal"
alias c='check'
alias e='mvim --remote-tab-silent'
#alias e='mvim'
alias ec='p /usr/local/bin/scapa.py check'
alias o='open'
alias g='git'
alias h='curl -I'
alias p='/usr/local/Cellar/python/2.7.2/bin/python'
alias check='p ~/sandboxes/check/check.py'
alias cover='coverage run ./manage.py test --logging-clear-handlers'
alias t='python manage.py test --noinput -s --logging-clear-handlers --with-progressive $1'
alias cb='git checkout master && git pull && git branch $1 && git checkout -b $1'
alias rb='cd ~/sandboxes/zamboni; . ~/scripts/remove-branch $1'
alias gl='git branch -l'
alias gd='git diff'
alias gs='git checkout'
alias gt='git status'
alias gsu='git submodule sync &&git submodule update --init --recursive'
alias gg='git log -n 1 -p'
alias grh='git reset HEAD^ && git reset --hard HEAD'
alias gcp='git cp'
alias gu='python ~/scripts/github.url.py';
alias gv='python ~/scripts/github.source.url.py';
gp() { git push origin $(__git_ps1 "%s"); python ~/scripts/github.url.py; }
gpf() { git push -f origin $(__git_ps1 "%s"); python ~/scripts/github.url.py; }
ci() { git commit -a -m "$@ $(__git_ps1 "(bug %s)")"; }
gss() { python ~/scripts/git.patch.show.py $1; }
gh() { open "https://github.com/andymckay/zamboni/commits/$(__git_ps1 "%s")"; }

alias jslint='/usr/local/share/npm/bin/jslint'

where() { /usr/bin/find . -name "$@" -print; }

export PYTHONSTARTUP=~/.pythonrc.py
export EDITOR=vim
export VISUAL=vim
export $EDITOR=vim
export DJANGO_SETTINGS_MODULE=settings
export TM_PYCHECKER=pylint
export WORKON_HOME=$HOME/.virtualenvs
export PATH=/usr/local/sbin:/usr/local/Cellar/ctags/5.8/bin/:/usr/local/Cellar/python/2.7.2/bin:$PATH
export VIRTUAL_ENV_DISABLE_PROMPT=1
