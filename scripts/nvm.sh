#! /bin/bash

# shellcheck source=helpers.sh
source "$(dirname "$0")/helpers.sh"

export NVM_LOCATION="${HOME}/.nvm"
if [ -d "${NVM_LOCATION}" ]; then
    log_already_installed "Node Version Manager"
else
    log_installation "Node Version Manager" 
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
fi