#! /bin/bash

# shellcheck source=scripts/helpers.sh
source "$(dirname "$0")/scripts/helpers.sh"
# shellcheck source=scripts/colors.sh
source "$(dirname "$0")/scripts/colors.sh"

prompt-script "./scripts/brew.sh"
prompt-script "./scripts/git.sh"
prompt-script "./scripts/omz.sh"
prompt-script "./scripts/nvm.sh"
prompt-script "./scripts/dotfiles.sh"
prompt-script "./scripts/fonts.sh"
prompt-script "./scripts/go.sh"
prompt-script "./scripts/docker.sh"
prompt-script "./scripts/terraform.sh"
prompt-script "./scripts/vscode.sh"
prompt-script "./scripts/sdkman.sh"
prompt-script "./scripts/shell.sh"
prompt-script "./scripts/system-tools.sh"
prompt-script "./scripts/python.sh"

echo ""
echo "${TXTGRN}All done! Remember to source or restart your shell...${TXTRST}"