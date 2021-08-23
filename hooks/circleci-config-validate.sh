#!/usr/bin/env bash
set -e

readonly DEBUG=${DEBUG:-unset}
[[ $DEBUG != unset ]] && set -x

# do not run in Circle CI
if [[ -z $CIRCLECI ]]; then
	# assert the circleci command exists
	if ! [ -x "$(command -v circleci)" ]; then
		echo 'circleci command not found'
		echo 'See https://circleci.com/docs/2.0/local-cli/ for installation instructions.'
		exit 1
	fi

	# The following is needed by the circleci local build tool (due to Docker interactivity)
	[ -f /dev/tty ] && exec /dev/tty

	# If validation fails, tell Git to stop and provide error message. Otherwise, continue.
	if ! msg=$(circleci config validate "$@"); then
		echo "CircleCI Configuration Failed Validation."
		echo "$msg"
		exit 1
	fi
fi
