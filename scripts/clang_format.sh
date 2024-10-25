#!/bin/bash
set -euo pipefail

clang-format --dry-run --Werror ./src/sample.cpp
