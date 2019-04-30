#!/usr/bin/env bash
# Original: https://github.com/jumanjihouse/pre-commit-hooks#forbid-binary
# Forked to change runtime to /usr/bin/env on win10
set -eu

# Forbid binary files.
# pre-commit uses the "identify" pure python library to detect binary files.

if [ $# -gt 0 ]; then
  for filename in "${@}"; do
    echo "[ERROR] ${filename} appears to be a binary file"
  done
  exit 1
fi
