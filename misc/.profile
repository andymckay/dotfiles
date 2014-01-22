WHITE=$(tput setaf 7)
GREEN=$(tput setaf 2)
BLUE=$(tput setaf 4)
PURPLE=$(tput setaf 5)
BOLD=$(tput bold)
RESET=$(tput sgr0)

PS1='\[$PURPLE\]$(__git_ps1 "[%s]") \[$GREEN\]\W\[$RESET\] $ '

source $HOME/.git-completion.bash
source $HOME/.virtualenvwrapper

alias ll='ls -al'
alias a="ack --nobreak --noheading --literal"
alias c='~/s/check'
alias e='mvim --remote-tab-silent'
#alias e='mvim'
alias ec='p /usr/local/bin/scapa.py check'
alias jf='p ~/scripts/jenkins.py'
alias jt='p /usr/local/bin/scapa.py jenkins test'
alias je='p /usr/local/bin/scapa.py jenkins edit'
alias o='open'
alias g='git'
alias p='python'
alias s='stackato'
alias z='/usr/local/Cellar/python/2.7.2/bin/python'
alias js='node'
alias check='p ~/sandboxes/check/check.py'
alias cover='coverage run ./manage.py test --logging-clear-handlers'
alias t='python manage.py test --noinput -s --logging-clear-handlers --with-progressive --with-blockage $1'
alias tl='python manage.py test --noinput -s --with-progressive --with-blockage --nologcapture $1'
alias tnp='python manage.py test --noinput -s --logging-clear-handlers --with-blockage $1'
alias gc='~/scripts/check'
alias gcb='git checkout master && git pull && git branch $1 && git checkout -b $1'
alias grb='git push origin :$1; git branch -D $1'
alias gl='git branch -l'
alias gd='git diff'
alias gs='git checkout'
alias gt='git status'
alias wip='gci wip'
alias gsu='git submodule sync &&git submodule update --init --recursive'
alias gg='git log -n 1 -p'
alias grh='git reset HEAD^ && git reset --hard HEAD'
alias gcp='git cp'
alias gmp='git log --author="Andy McKay" -n 100 | grep $1 -B 4'
alias gu='python ~/scripts/github.url.py';
alias gv='python ~/scripts/github.source.url.py';
gp() { git push origin $(__git_ps1 "%s"); python ~/scripts/github.url.py; }
gtrb() { git fetch --all && git checkout --track -b $1 origin/$1; }
gpf() { git push -f origin $(__git_ps1 "%s"); python ~/scripts/github.url.py; }
gci() { git commit -a -m "$@ $(__git_ps1 "(bug %s)")"; }
gss() { python ~/scripts/git.patch.show.py $1; }
gh() { open "https://github.com/andymckay/zamboni/commits/$(__git_ps1 "%s")"; }
pup() { pip install -r requirements/dev.txt --no-deps --exists-action=w --find-links https://pyrepo.addons.mozilla.org/; }
pupp() { pip install -r requirements/prod.txt --no-deps --exists-action=w --find-links https://pyrepo.addons.mozilla.org/; }
puppy() { pip install -r requirements/dev.txt --no-deps --exists-action=w; }

alias jslint='/usr/local/share/npm/bin/jslint'

where() { /usr/bin/find . -name "$@" -print; }

export PYTHONSTARTUP=~/.pythonrc.py
export EDITOR=vim
export VISUAL=vim
export $EDITOR=vim
export TM_PYCHECKER=pylint
export WORKON_HOME=$HOME/.virtualenvs
export PATH=/usr/local/bin/:/usr/local/share/npm/bin/:/usr/local/b2g/:/usr/local/sbin:/usr/local/Cellar/ctags/5.8/bin/:/usr/local/Cellar/python/2.7.2/bin:$PATH
export VIRTUAL_ENV_DISABLE_PROMPT=1
export PIP_DOWNLOAD_CACHE=~/.pip/download_cache
export MYVIMRC=$HOME/.profile


function cd {
    builtin cd "$@";
    if [ $? -eq 0 ]; then
        if [[ $(pwd) =~ /Users/andy/sandboxes/([a-zA-Z]+)$ ]]; then
            if [[ -d "/Users/andy/.virtualenvs/${BASH_REMATCH[1]}/" ]]; then
                workon "${BASH_REMATCH[1]}";
                echo "Set virtualenv to $VIRTUAL_ENV";
            fi;
        fi;
    fi;
}

function cdp {
    if [[ -d "$VIRTUAL_ENV/lib/python2.6/site-packages/$@" ]]; then
        builtin pushd "$VIRTUAL_ENV/lib/python2.6/site-packages/$@";
    fi;
    if [[ -d "$VIRTUAL_ENV/lib/python2.7/site-packages/$@" ]]; then
        builtin pushd "$VIRTUAL_ENV/lib/python2.7/site-packages/$@";
    fi;
}
