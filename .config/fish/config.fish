export VIRTUALFISH_ACTIVATION_FILE=.vfenv
if status is-interactive
end
# Auto activate python virtual environment.  Must be a git repo.
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

function fish_greeting
# 	fortune
end
# run fastfetch only if not in VS Code
if [ "$TERM_PROGRAM" != "vscode" ]
  fastfetch
end

