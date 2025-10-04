#!/bin/bash

set -ouex pipefail
echo "[DEV] Installing..."

tee /etc/yum.repos.d/vscode.repo <<'EOF'
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
autorefresh=1
type=rpm-md
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF

PACKAGES=(
    neovim
	code
    emacs
    gh
	git
	patch
	node
	npm
	pnpm
)

dnf5 install --setopt=install_weak_deps=False -y "${PACKAGES[@]}"
echo "[DEV] Packages installed successfully"
# echo "[DEV] Installing copilot"
# 	/usr/bin/npm install -g @github/copilot
# echo "[DEV] Copilot installed"

echo "Installing DevPod"
curl -Lo /tmp/devpod "https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-amd64" 
install -c -m 0755 /tmp/devpod /usr/bin 
rm -f /tmp/devpod
echo "DevPod installed"

# echo "Installing Jetbrains Toolbox
# curl -Lo /tmp/jetbrains-toolbox.tar.gz "https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.9.0.56191.tar.gz"
