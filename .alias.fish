# Nala aliases
alias snala="sudo nala"

# ls aliases uses exa instead of ls

alias ls="lsd -A --group-directories-first"
alias la="lsd -Al --group-directories-first"
alias ll="lsd -al --group-directories-first"

# Git aliases
alias check="git ls-files -v|grep '^S'"
alias gf="git fetch"
alias gpull="git pull"
alias gpush="git push"

# Docker aliases
alias dcu="docker-compose up"
alias dcud="docker-compose up -d"
alias dcs="docker-compose stop"
alias dcd="docker-compose down"
alias dcufr="docker-compose up --force-recreate"
alias dcudfr="docker-compose up -d --force-recreate"
alias dcbnc="docker-compose build --no-cache"
alias dcb="docker-compose build"

# alias to replace cat with bat
alias cat="batcat"

# various aliases
alias icat="kitty +kitten icat"
alias vim="nvim"

# npm
alias nr="npm run"
alias ni="npm install"

# pip 
alias pi="pip install"
alias pf="pip freeze"

# python
alias py="python"

# npm
alias nrb="npm run build"
