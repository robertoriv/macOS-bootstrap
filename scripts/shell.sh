#! /bin/bash

# shellcheck source=helpers.sh
source "$(dirname "$0")/helpers.sh"

binst shellcheck #bats
# bats doesn't work particularly well on the mac.. may want to alias the docker container