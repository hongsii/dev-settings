#! /bin/bash

tmux_pkg_name=tmux
if brew list -1 | grep -q "^${tmux_pkg_name}\$"; then
    echo "'$tmux_pkg_name' is installed"
else
    brew install tmux
fi

# Copy conf file
tmux_conf_name=.tmux_conf

cp $tmux_conf_name ~/$tmux_conf_name
tmux source-file ~/$tmux_conf_name
