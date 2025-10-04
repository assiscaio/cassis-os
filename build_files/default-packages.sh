#!/bin/bash

set -ouex pipefail
echo "[BASE] Installing..."
dnf -y copr enable ublue-os/packages
dnf -y copr enable ublue-os/staging

PACKAGES=(
    atuin
    bat
    btop
	cascadia-code-fonts
	make
    direnv
	distrobox
	fira-code-fonts
	jetbrains-mono-fonts-all
	glow
	powerline-fonts
	tmux
    yq
    zoxide
	ublue-brew
	ublue-fastfetch
	ublue-setup-services
	pulseaudio-utils
	kitty
	alacritty
)

echo "Instalando Starship"
curl -Lo /tmp/starship.tar.gz "https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-gnu.tar.gz"
tar xzf /tmp/starship.tar.gz -C /tmp
install -c -m 0755 /tmp/starship /usr/bin
echo "Starship Instalado"

dnf5 install --setopt=install_weak_deps=False -y "${PACKAGES[@]}"

dnf5 copr disable ublue-os/packages
dnf5 copr disable ublue-os/staging
echo "[BASE] packages installed successfully"
