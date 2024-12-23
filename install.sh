#! /bin/bash

# shellcheck source=scripts/helpers.sh
source "$(dirname "$0")/scripts/helpers.sh"
# shellcheck source=scripts/colors.sh
source "$(dirname "$0")/scripts/colors.sh"

prompt-script "./scripts/brew.sh"
[ -f "/usr/local/bin/brew" ] && eval $(/usr/local/bin/brew shellenv)
[ -f "/opt/homebrew/bin/brew" ] && eval $(/opt/homebrew/bin/brew shellenv)

prompt-script "./scripts/git.sh"
prompt-script "./scripts/omz.sh"
prompt-script "./scripts/dotfiles.sh"
prompt-script "./scripts/terraform.sh"
prompt-script "./scripts/vscode.sh"
prompt-script "./scripts/sdkman.sh"
prompt-script "./scripts/python.sh"

echo ""
echo "${TXTGRN}All done! Remember to source or restart your shell...${TXTRST}"
