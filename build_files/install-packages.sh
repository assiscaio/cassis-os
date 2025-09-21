log "Install default packages"

PACKAGES=(
    neovim
    emacs
    gh
    atuin
    bat
    btop
    bun
    devpod
    direnv
    starship
    yq
    zoxide
)

dnf5 install --setopt=install_weak_deps=False -y "${PACKAGES[0]}"
log "Packages installed successfully"