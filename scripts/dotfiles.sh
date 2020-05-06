#! /bin/bash

# shellcheck source=helpers.sh
source "$(dirname "$0")/helpers.sh"

DOTFILES_REPO=${DOTFILES_REPO:-robertoriv/dotfiles}
DOTFILES_LOCATION="${HOME}/.dotfiles"


if [ -d "${DOTFILES_LOCATION}" ]; then
    log_already_cloned "${DOTFILES_REPO}" "${DOTFILES_LOCATION}"
else
    git clone --recurse-submodules "git@github.com:${DOTFILES_REPO}.git" "${DOTFILES_LOCATION}"
fi

if command -v cargo > /dev/null; then
    log_already_installed "rust"
else
    binst rust
fi

if command -v dot > /dev/null; then
    log_already_installed "dot"
else
    log_installation "dot"
    cargo install --git https://github.com/ubnt-intrepid/dot.git
    export PATH="${HOME}/.cargo/bin:$PATH"
fi

echo ""
echo "Updating [${BLDBLU}dot${TXTRST}] links..."
dot -v check
dot -v link