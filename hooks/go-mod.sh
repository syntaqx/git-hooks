#!/bin/bash
set -e

go mod tidy

git diff --exit-code
code=$?
git checkout -- .

exit $code
