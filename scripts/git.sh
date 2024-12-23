#! /bin/bash

# shellcheck source=helpers.sh
source "$(dirname "$0")/helpers.sh"
# shellcheck source=colors.sh
source "$(dirname "$0")/colors.sh"

$(brew --prefix)/bin/git lfs install

# download required repositories
mkdir -p "${HOME}/code/catppuccin/"
git clone git@github.com:catppuccin/delta.git "${HOME}/code/catppuccin/delta"
git clone git@github.com:catppuccin/warp.git "${HOME}/code/catppuccin/warp"

# if we are here, we've already cloned the repo. so...
# USER_NAME="robertoriv"
# PRIVATE_KEY="${HOME}/.ssh/github"
# echo "\n\n"
# [ ! -f ${PRIVATE_KEY} ] && ssh-keygen -f "${PRIVATE_KEY}" -t rsa -b 4096 -C "${EMAIL}"
# cat "${PRIVATE_KEY}.pub" | pbcopy
# echo "\n${TXTGRN}${PRIVATE_KEY}.pub${TXTRST} has been copied to your clipboard..."
# read -s -k $'?Press [Enter] after you have uploaded the key to GitHub.\n'
