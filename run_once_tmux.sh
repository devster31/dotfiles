#!/usr/bin/env sh

export ANSIBLE_INVENTORY_UNPARSED_WARNING=False
export ANSIBLE_LOCALHOST_WARNING=False

ansible -m git -a 'repo=https://github.com/tmux-plugins/tpm dest=~/.tmux/plugins/tpm' localhost
