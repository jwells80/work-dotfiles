# fnm
if [ "$TERM_PROGRAM" != "vscode" ]
	set PATH "/home/$USER/.local/share/fnm" $PATH
	fnm env --use-on-cd | source
end