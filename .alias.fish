alias wtr="curl wttr.in"

# Nala aliases
alias snala="sudo nala"
alias i="sudo nala install"
alias update="sudo nala update"
alias upgrade="sudo nala upgrade"
alias remove="sudo nala remove"

# ls aliases uses exa instead of ls

alias ls="lsd -A --group-directories-first"
alias la="lsd -Al --group-directories-first"
alias ll="lsd -al --group-directories-first"

# Git aliases
alias check="git ls-files -v|grep '^S'"
alias gf="git fetch"
alias gpull="git pull"
alias gpush="git push"
alias check="git ls-files -v|grep '^S'"
function skip
	command git update-index --skip-worktree $argv;  git status;
end
function unskip
	command git update-index --no-skip-worktree $argv;  git status; 
end

# Docker aliases
alias dcu="docker-compose up"
alias dcud="docker-compose up -d"
alias dcs="docker-compose stop"
alias dcd="docker-compose down"
alias dcufr="docker-compose up --force-recreate"
alias dcudfr="docker-compose up -d --force-recreate"
alias dcbnc="docker-compose build --no-cache"
alias dcb="docker-compose build"
# docker bash
function dexbash
    docker exec -it "$argv" bash
end
# docker log
function dlog 
    docker logs -f "$argv"
end

# alias to replace cat with bat
alias cat="batcat"

# various aliases
alias icat="kitty +kitten icat"
alias vim="nvim"

# npm
alias nr="npm run"
alias ni="npm install"
alias nrb="npm run build"

# pip 
alias pi="pip install"
alias pf="pip freeze"

# python
alias py="python"
alias pym="python -m"
alias venv="python -m venv"
function pysetup
    python -m venv $argv
    git init
    source $argv/bin/activate.fish
end

alias s="kitty +kitten ssh"
