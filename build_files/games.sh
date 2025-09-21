set -ouex pipefail
echo "[GAMES] Installing..."

#dnf5 copr enable lizardbyte/stable

PACKAGES=(
	steam
	#Sunshine V2
)

dnf5 install --setopt=install_weak_deps=False -y "${PACKAGES[@]}"
echo "[GAMES] packages installed successfully"
