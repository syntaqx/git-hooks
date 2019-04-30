#!/usr/bin/env bash
# Original: https://github.com/jumanjihouse/pre-commit-hooks#shellcheck
# Forked to change runtime to /usr/bin/env on win10
set -eu

# Ensure shell scripts conform to shellcheck.
# https://www.shellcheck.net/

readonly DEBUG=${DEBUG:-unset}
if [ "${DEBUG}" != unset ]; then
  set -x
fi

shellcheck "$@"
