#!/bin/bash

set -ouex pipefail
echo "[DESKTOP] Installing..."
dnf5 -y copr enable solopasha/hyprland 

PACKAGES=(
	wofi
	hyprland-git
	hyprutils
	hyprland-qtutils
	hyprnome
	pyprland
	hyprqt6engine
	hyprcursor
	hyprpaper
	hyprpanel
	hypridle
	hyprsunset
	hyprland-contrib
	hyprland-plugins-git
	satty
	swww
	eww-git
	# sway
	# sway-systemd
	# swayimg
	# swaylock
	# swayidle
	# swaybg
	slurp
	wf-recorder
	#waybar-git
	grim
	azote
)


dnf5 install --setopt=install_weak_deps=False -y "${PACKAGES[@]}"
echo "[DESKTOP] packages installed successfully"

dnf5 copr disable solopasha/hyprland 
