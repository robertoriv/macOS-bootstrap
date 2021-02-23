#! /bin/bash

# shellcheck source=helpers.sh
source "$(dirname "$0")/helpers.sh"

if command -v terraform > /dev/null; then
    log_already_installed "Terraform"
else
    tfenv list-remote
    tfenv install latest
    tfenv use latest
fi
