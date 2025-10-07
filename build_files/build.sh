#!/usr/bin/env bash
set -oue pipefail

echo "🔧 Starting build.sh..."

### Enable any needed services (you already do this)
systemctl enable podman.socket

### Run install script if packages.txt exists
if [[ -f /customizations/packages.txt ]]; then
    echo "📦 Installing packages from packages.txt..."
    bash /customizations/scripts/10-install-packages.sh
fi

### Run remove script if remove-packages.txt exists
if [[ -f /customizations/remove-packages.txt ]]; then
    echo "🧹 Removing packages from remove-packages.txt..."
    bash /customizations/scripts/20-remove-packages.sh
fi

echo "✅ build.sh complete!"
