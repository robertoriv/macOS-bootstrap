#! /bin/bash

# shellcheck source=helpers.sh
source "$(dirname "$0")/helpers.sh"

install_homebrew(){
    if command -v xcrun > /dev/null; then
    log_already_installed "macOS Developer Tools"
    else
        log_installation "macOS Developer Tools"
        xcode-select --install
    fi

    if command -v brew > /dev/null; then
        log_already_installed "Homebrew"
    else
        log_installation "Homebrew"
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    fi
}

install_homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle
