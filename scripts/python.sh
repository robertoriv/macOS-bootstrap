#! /bin/bash

# shellcheck source=helpers.sh
source "$(dirname "$0")/helpers.sh"
# shellcheck source=colors.sh
source "$(dirname "$0")/colors.sh"

PYTHON_VERSION=${PYTHON_VERSION:-3.13.1}

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"

echo "Installing ${TXTBLU}pyenv-virtualenv${TXTRST}"
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

echo ""
echo "Installing ${TXTBLU}python${TXTRST} version ${BLDWHT}${BAKBLU}${PYTHON_VERSION}${TXTRST}..."
pyenv install -s "${PYTHON_VERSION}"
pyenv global "${PYTHON_VERSION}"

echo ""
echo "Listing available ${TXTBLU}python${TXTRST} environments:"
pyenv versions

echo ""
echo "Active ${TXTBLU}python${TXTRST} version:"
python --version

echo ""
echo "Installing ${TXTBLU}pipx${TXTRST}..."
brew install pipx
pipx ensurepath

echo ""
echo "Installing ${TXTBLU}poetry${TXTRST}..."
pipx install poetry

