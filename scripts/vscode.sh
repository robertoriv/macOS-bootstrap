#! /bin/bash

# shellcheck source=helpers.sh
source "$(dirname "$0")/helpers.sh"

if command -v code > /dev/null; then
    log_already_installed "Visual Studio Code"
else
    bcinst visual-studio-code 
fi

code --install-extension Shan.code-settings-sync