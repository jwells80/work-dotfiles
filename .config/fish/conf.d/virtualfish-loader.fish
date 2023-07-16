set -g VIRTUALFISH_VERSION 2.5.5
set -g VIRTUALFISH_PYTHON_EXEC /usr/bin/python3

source /home/$USER/.local/lib/python3.11/site-packages/virtualfish/virtual.fish
source /home/$USER/.local/lib/python3.11/site-packages/virtualfish/compat_aliases.fish
source /home/$USER/.local/lib/python3.11/site-packages/virtualfish/auto_activation.fish
emit virtualfish_did_setup_plugins