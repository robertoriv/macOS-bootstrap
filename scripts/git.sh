#! /bin/bash

# shellcheck source=helpers.sh
source "$(dirname "$0")/helpers.sh"
# shellcheck source=colors.sh
source "$(dirname "$0")/colors.sh"

binst git git-lfs pre-commit scmpuff

# if we are here, we've already cloned the repo. so...
# USER_NAME="robertoriv"
# PRIVATE_KEY="${HOME}/.ssh/github"
# echo "\n\n"
# [ ! -f ${PRIVATE_KEY} ] && ssh-keygen -f "${PRIVATE_KEY}" -t rsa -b 4096 -C "roberto.rivera@gmail.com"
# cat "${PRIVATE_KEY}.pub" | pbcopy
# echo "\n${TXTGRN}${PRIVATE_KEY}.pub${TXTRST} has been copied to your clipboard..."
# read -s -k $'?Press [Enter] after you have uploaded the key to GitHub.\n'
