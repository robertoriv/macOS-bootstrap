#! /bin/bash

# shellcheck source=helpers.sh
source "$(dirname "$0")/helpers.sh"

if command -v terraform > /dev/null; then
    log_already_installed "Terraform"
else
    binst tfenv terraform-docs terraform_landscape tflint
    tfenv list-remote
    tfenv install latest
    tfenv use latest
fi

if command -v scenery > /dev/null; then
    log_already_installed "Scenery"
else
    log_installation "Scenery"
    go get -u github.com/dmlittle/scenery
fi