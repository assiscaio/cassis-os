#!/bin/bash

set -ouex pipefail
echo "[DESKTOP] Installing..."
dnf5 -y copr enable solopasha/hyprland 
dnf5 -y copr enable peterwu/iosevka
dnf5 -y copr enable tylerjgriffiths/stumpwm 
PACKAGES=(
	wofi
	hyprland-git
	hyprutils
	hyprnome
	pyprland
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
	sway
	sway-systemd
	swayimg
	swaylock
	swayidle
	swaybg
	slurp
	wf-recorder
	waybar-git
	grim
	azote
	kde-connect
	stumpwm
)

PACKAGES_FONTS=(
    iosevka-term-ss15-fonts
    iosevka-term-ss12-fonts
    iosevka-term-ss04-fonts
    iosevka-term-ss07-fonts
)
    

dnf5 install --setopt=install_weak_deps=False -y "${PACKAGES[@]}"
dnf5 install --setopt=install_weak_deps=False -y "${PACKAGES_FONTS[@]}"

echo "[DESKTOP] packages installed successfully"

dnf5 copr disable solopasha/hyprland 
dnf5 copr disable peterwu/iosevka
dnf5 copr disable tylerjgriffiths/stumpwm 
