#! /bin/bash

# shellcheck source=helpers.sh
source "$(dirname "$0")/helpers.sh"

if [ -d "${HOME}/.oh-my-zsh" ]; then
    log_already_installed "Oh-My-Zsh"
else
    log_installation "Oh-My-Zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi