WHITE=$(tput setaf 7)
GREEN=$(tput setaf 2)
BOLD=$(tput bold)
RESET=$(tput sgr0)

PS1='\[$BOLD\]\[$WHITE\]\w\[$GREEN\]$(__git_ps1 "(%s)")\[$RESET\] $ '

alias ll='ls -al'
alias a='ack --nobreak --noheading --literal'
alias e='mvim'
alias k='open -a "Komodo IDE"'
alias o='open'
alias g='git'
alias p='python'
alias t='test'
alias check='python ~/sandboxes/check/check.py'
alias cover='coverage run ./manage.py test --logging-clear-handlers'
alias test='python manage.py test --with-progressive --noinput -s --logging-clear-handlers $1'
alias cb='git checkout master && git pull && git branch $1 && git checkout -b $1'
alias rb='cd ~/sandboxes/zamboni; . ~/scripts/remove-branch '
alias 'gl'='git branch -l'
alias 'gw'='git diff --name-only master'
alias 'gd'='git diff'
alias 'gs'='git checkout'
alias 'gg'='git log -n 1 -p'
alias 'gx'='git fixup'
alias 'gr'='git rebase --interactive --autosquash master'
gp() { git push origin $(__git_ps1 "%s"); python ~/scripts/github.url.py; }
gpf() { git push -f origin $(__git_ps1 "%s"); python ~/scripts/github.url.py; }
ci() { git commit -a -m "$@ $(__git_ps1 "(bug %s)")"; }
gh() { open "https://github.com/andymckay/zamboni/commits/$(__git_ps1 "%s")"; }
alias gu='python ~/scripts/github.url.py';
alias gv='python ~/scripts/github.source.url.py';
#gf() { git commit -a -m\"fixup! $(git log -1 --format='\\''%s'\\'' $@)"; }

alias jslint='/usr/local/share/npm/bin/jslint'

where() { /usr/bin/find . -name "$@" -print; }

export PYTHONSTARTUP=~/.pythonrc.py
export EDITOR=vim
export VISUAL=vim
export $EDITOR=vim
export DJANGO_SETTINGS_MODULE=settings
export TM_PYCHECKER=pylint

. ~/sandboxes/zamboni/vendor/src/django/extras/django_bash_completion

export WORKON_HOME=$HOME/.virtualenvs
source $HOME/.git-completion.bash
source $HOME/.virtualenvwrapper

# Setting PATH for MacPython 2.6
# The orginal version is saved in .profile.pysave
PATH="/usr/local/Cellar/gettext/0.17/bin:/usr/local/bin:/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
export PATH

# Setting PATH for MacPython 2.6
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
export PATH

##
# Your previous /Users/andy/.profile file was backed up as /Users/andy/.profile.macports-saved_2011-01-12_at_15:36:54
##

# MacPorts Installer addition on 2011-01-12_at_15:36:54: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
