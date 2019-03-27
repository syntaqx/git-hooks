#!/usr/bin/env bash

# Test if the CircleCI config file is well formed.
# https://circleci.com/docs/2.0/local-cli/
# https://circleci.com/blog/circleci-hacks-validate-circleci-config-on-every-commit-with-a-git-hook/

set -o errexit
set -o pipefail
set -o nounset

readonly DEBUG=${DEBUG:-unset}
[[ $DEBUG != unset ]] && set -x

# assert the circleci command exists
if ! [ -x "$(command -v circleci)" ]; then
    echo 'circleci command not found'
    echo 'See https://circleci.com/docs/2.0/local-cli/ for installation instructions.'
    exit 1
fi

# The following is needed by the circleci local build tool (due to Docker interactivity)
# exec < /dev/tty

# If validation fails, tell Git to stop and provide error message. Otherwise, continue.
if ! msg=$(circleci config validate); then
	echo "CircleCI Configuration Failed Validation."
	echo "$msg"
	exit 1
fi
