#!/usr/bin/env bash
set -euo pipefail

if [[ -f /customizations/packages.txt ]]; then
    echo "Installing packages from packages.txt..."
    xargs -r -a /customizations/packages.txt rpm-ostree install
fi
