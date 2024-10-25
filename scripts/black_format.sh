#!/bin/bash
set -euo pipefail

INPLACE_FORMAT=${INPLACE_FORMAT:=false}

while (( $# )); do
    case "$1" in
        -i)
            INPLACE_FORMAT=true
            shift 1
            ;;
    esac
done

VERSION=$(black --version)
echo "black version: $VERSION"

if [[ "$INPLACE_FORMAT" == "true" ]]; then
    black src/sample.py
else
    black --diff --check src/sample.py 
fi
