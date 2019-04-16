#!/usr/bin/env bash
set -e

if go test -short -v ./... -ne 0; then
  echo "unit tests failed"
  exit 1
fi
