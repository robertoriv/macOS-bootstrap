#! /bin/bash

# shellcheck source=helpers.sh
source "$(dirname "$0")/helpers.sh"

brew tap homebrew/cask-fonts
bcinst font-hack-nerd-font
