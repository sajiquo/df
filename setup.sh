#!/bin/bash

# https://github.com/jesseduffield/lazygit#ubuntu
install_lazygit() {
    local -r LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
    curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
    tar xf lazygit.tar.gz lazygit
    sudo install lazygit /usr/local/bin
}

set_alias() {
    alias s=supervisorctl
    alias be='bundle exec'
    alias lg=lazygit
}

install_lazygit
set_alias
echo \033[32m SETUP COMPLETED \033[m