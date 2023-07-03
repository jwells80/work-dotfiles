export VIRTUALFISH_ACTIVATION_FILE=.vfenv
if status is-interactive
end
    # Commands to run in interactive sessions can go here

#alias ls="exa -ag --group-directories-first --icons"
#alias la="exa -alh --group-directories-first --icons"
alias check="git ls-files -v|grep '^S'"
function skip
	command git update-index --skip-worktree $argv;  git status;
end
function unskip
	command git update-index --no-skip-worktree $argv;  git status; 
end
function __auto_source_venv --on-variable PWD --description "Activate/Deactivate virtualenv on directory change"
  status --is-command-substitution; and return

  # Check if we are inside a git directory
  if git rev-parse --show-toplevel &>/dev/null
    set gitdir (realpath (git rev-parse --show-toplevel))
    set cwd (pwd)
    # While we are still inside the git directory, find the closest
    # virtualenv starting from the current directory.
    while string match "$gitdir*" "$cwd" &>/dev/null
      if test -e "$cwd/.venv/bin/activate.fish"
        source "$cwd/.venv/bin/activate.fish" &>/dev/null 
        return
      else
        set cwd (path dirname "$cwd")
      end
    end
  end
  # If virtualenv activated but we are not in a git directory, deactivate.
  if test -n "$VIRTUAL_ENV"
    deactivate
  end
end
export COMPOSE_PROFILES=development
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
#alias dcu="docker-compose up"
#alias dcud="docker-compose up -d"
#alias dcs="docker-compose stop"
#alias dcd="docker-compose down"
function dexbash
	command docker exec -it $argv bash; 
end
function dlog
	command docker logs -f $argv;
end
export PATH="$HOME/.local/bin:$PATH"
source /home/jasonw/.alias.fish
#source /home/jasonw/.venv.act.fish
#starship init fish | source
function fish_greeting
# 	fortune
end

if [ "$TERM_PROGRAM" != "vscode" ]
  fastfetch --logo ~/.config/fastfetch/kubuntu.png
end

