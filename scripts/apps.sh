# Dependencies
sudo pacman -S ninja gcc wayland-protocols libjpeg-turbo libwebp pango cairo pkgconf cmake libglvnd wayland xdg-user-dirs python-requests --noconfirm

# Navigation bar
yay -S hyprpaper --noconfirm
yay -S pavucontrol --noconfirm
yay -S wlogout --noconfirm
yay -S waybar --noconfirm

# Neovim-related tools
yay -S xclip --noconfirm
yay -S fd --noconfirm
yay -S ripgrep --noconfirm
# For luasnip
sudo pacman -S luajit --noconfirm
yay -S luarocks --noconfirm
sudo luarocks install jsregexp
# For tresitter
npm install -g tree-sitter-cli

# Programming Tools
yay -S neovim --noconfirm
yay -S alacritty --noconfirm

# Browsers
yay -S brave-bin --noconfirm
yay -S firefox --noconfirm

# Entertainment
yay -S spotify --noconfirm

# Screenshotting Tool and dependencies
yay -S qt5-base qt5-tools qt5-svg xdg-desktop-portal xdg-desktop-portal-wlr grim --noconfirm
yay -S flameshot --noconfirm

# Photo Editing
yay -S gimp --noconfirm
