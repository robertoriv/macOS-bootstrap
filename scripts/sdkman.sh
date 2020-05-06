#! /bin/bash

# shellcheck source=helpers.sh
source "$(dirname "$0")/helpers.sh"

export SDKMAN_LOCATION="${HOME}/.sdkman"
if [ -d "${SDKMAN_LOCATION}" ]; then
    log_already_installed "Software Development Kit Manager"
    source "${HOME}/.sdkman/bin/sdkman-init.sh"
    sdk selfupdate
else
    log_installation "Software Development Kit Manager" 
    curl -s "https://get.sdkman.io" | bash
    source "${HOME}/.sdkman/bin/sdkman-init.sh"
fi

sdk version