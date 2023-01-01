DEPENDENCIES="sway swaybg kitty helix zsh zsh-theme-powerlevel10k-git lightdm"

CONFIG_DIR=~/.config

SWAY_CONF=config
SWAY_DIR=$(CONFIG_DIR)/sway

KITTY_CONF=kitty.conf
KITTY_THEME=current-theme.conf
KITTY_DIR=$(CONFIG_DIR)/kitty

HELIX_CONF=config.toml
HELIX_LANG=languages.toml
HELIX_DIR=$(CONFIG_DIR)/helix

P10K=p10k.zsh
ZSHRC=zshrc

pull:
	cp $(KITTY_DIR)/$(KITTY_CONF) .
	cp $(KITTY_DIR)/$(KITTY_THEME) .

	cp $(HELIX_DIR)/$(HELIX_CONF) .
	cp $(HELIX_DIR)/$(HELIX_LANG) .

	cp $(SWAY_DIR)/$(SWAY_CONF) .
	cp ~/.$(P10K) .
	cp ~/.$(ZSHRC) .

push:
	cp $(KITTY_CONF) $(KITTY_DIR)/$(KITTY_CONF)
	cp $(KITTY_THEME) $(KITTY_DIR)/$(KITTY_THEME)

	cp $(HELIX_CONF) $(HELIX_DIR)/$(HELIX_CONF)
	cp $(HELIX_LANG) $(HELIX_DIR)/$(HELIX_LANG)

	cp $(SWAY_CONF) $(SWAY_DIR)/$(SWAY_CONF)
	cp $(P10K) ~/.$(P10K)
	cp $(ZSHRC) ~/.$(ZSHRC)

install:
	sudo pacman -S git
	git clone https://aur.archlinux.org/yay.git && makepkg -si -p yay/PKGBUILD
	yay -S $(DEPENDENCIES)