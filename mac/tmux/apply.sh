#! /bin/bash

if [ ! -x "$(command -v brew)" ]; then
    echo "Brew must be installed"
    exit 1
fi

tmux_pkg_name=tmux
if brew list -1 | grep -q "^${tmux_pkg_name}\$"; then
    echo "'$tmux_pkg_name' is installed"
else
    brew install tmux
fi

# Copy conf file
tmux_conf_name=.tmux.conf

cp $tmux_conf_name ~/$tmux_conf_name
tmux source-file ~/$tmux_conf_name
