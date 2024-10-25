#!/bin/bash
set -euo pipefail

DEFAULT_OPTION="--dry-run"

if [[ $# -gt 0 && $1 == "-i" ]]; then
    DEFAULT_OPTION="-i"
fi

clang-format $DEFAULT_OPTION --Werror ./src/sample.cpp
