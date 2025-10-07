#!/usr/bin/env bash
set -euo pipefail

if [[ -f /customizations/remove-packages.txt ]]; then
    echo "Removing packages from remove-packages.txt..."
    xargs -r -a /customizations/remove-packages.txt rpm-ostree override remove
fi
