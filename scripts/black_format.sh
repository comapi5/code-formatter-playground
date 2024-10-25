#!/bin/bash
set -euo pipefail

VERSION=$(black --version)
echo "black version: $VERSION"

black --diff --check src/sample.py 
