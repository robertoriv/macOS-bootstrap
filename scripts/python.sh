#! /bin/bash

# shellcheck source=helpers.sh
source "$(dirname "$0")/helpers.sh"
# shellcheck source=colors.sh
source "$(dirname "$0")/colors.sh"

PYTHON_VERSION=${PYTHON_VERSION:-3.9.1}

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"

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
echo "Installing ${TXTBLU}poetry${TXTRST}..."
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python

