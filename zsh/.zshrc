# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(common-aliases git sudo virtualenvwrapper wd)
plugins=(common-aliases git sudo archlinux wd)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Personal aliases

# Yubikey
alias yubi="ykman oath code"

# Docker
alias dockerkill="docker kill $(docker ps -q) && docker-compose rm -f"
alias dockerstopcontainers="docker ps -a -q | awk '{print $1}' | xargs -L 1 -r docker stop"
alias dockercleancontainers="docker ps -a -q | awk '{print $1}' | xargs -L 1 -r docker rm"
alias dockercleanimages="docker images -q | awk '{print $1}' | xargs -L 1 -r docker rmi"
alias dockerclean="dockerstopcontainers && dockercleancontainers && dockercleanimages"
alias dockernone="docker rmi $(docker images | grep "^<none>" | awk "{print $3}")"
alias docker-clean='docker-kill-all || true && docker-purge'
alias docker-kill-all='docker kill $(docker ps -q)'
alias docker-purge='docker rm $(docker ps -a -q)'
alias docker-purge-all='docker rmi $(docker images -q)'
alias docker-purge-i='docker rmi $()docker images -q -f dangling=true'

# Docker-compose
alias fig='docker-compose'
alias stop='fig kill && fig rm -f'

# ack
export ACK_PAGER="less -R -S -X"

alias ll="ls -ltrha"
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
