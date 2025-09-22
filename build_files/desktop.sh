#!/bin/bash

set -ouex pipefail
echo "[DESKTOP] Installing..."

PACKAGES=(
	wofi
	hyprutils
	hyprland
	hyprcursor
	sway
	sway-systemd
	swayimg
	swaylock
	swayidle
	swaybg
	slurp
	wf-recorder
	waybar
	grim
	azote
)

dnf5 install --setopt=install_weak_deps=False -y "${PACKAGES[@]}"
echo "[DESKTOP] packages installed successfully"
