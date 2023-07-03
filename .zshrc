# P10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(activatevenv git virtualenv zsh-autosuggestions zsh-syntax-highlighting zsh-interactive-cd)
source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Docker compose development profile
export COMPOSE_PROFILES=development

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Virtualevnwrapper settings:
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV=/home/jasonw/.local/bin/virtualenv
source ~/.local/bin/virtualenvwrapper.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# source aliases file
source ~/.alias

export PYTHONSTARTUP=~/.pythonstartup
export PATH="$HOME/.local/bin:$PATH"

# neofetch
fm6000 -r
autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
fpath+=${ZDOTDIR:-~}/.zsh_functions
