#! /bin/bash

# shellcheck source=colors.sh
source "$(dirname "${BASH_SOURCE[0]}")/colors.sh"

export GREEN_CHECKMARK="${TXTGRN}✓${TXTRST}"

log_installation(){
    echo "Installing: [${BLDBLU}$1${TXTRST}]"
}

log_already_installed(){
    echo "[${BLDBLU}$1${TXTRST}] is already installed... ${GREEN_CHECKMARK}"
}

log_already_cloned(){
    echo "[${BLDBLU}$1${TXTRST}] is already cloned to [${BLDBLU}${2}${TXTRST}]... ${GREEN_CHECKMARK}"
}

binst(){
    echo "Installing with ${TXTGRN}brew${TXTRST}: [${BLDBLU}$*${TXTRST}]"
    /usr/local/bin/brew install "$@" || /usr/local/bin/brew upgrade "$@"
}

bcinst(){
    echo "Installing from cask: [${BLDBLU}$*${TXTRST}]"
    /usr/local/bin/brew cask install "$@"
}

prompt-script(){
    echo ""
    if [ -z "$1" ]; then
        echo "Error: No script was specified..."
        exit 1
    fi

    SCRIPT="${1}"
    echo "Do you wish to run ${TXTGRN}${SCRIPT}${TXTRST}?"
    select yn in "Yes" "No"; do
        case $yn in
            Yes ) echo ""; ${SCRIPT}; break;;
            No ) echo ""; echo "Skipped ${TXTRED}${SCRIPT}${TXTRST}..."; break;;
        esac
    done
}