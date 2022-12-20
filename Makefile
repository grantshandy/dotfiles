pull:
	cp ~/.config/kitty/kitty.conf .
	cp ~/.config/kitty/current-theme.conf .
	cp ~/.config/helix/config.toml .
	cp ~/.config/helix/languages.toml .
	cp ~/.p10k.zsh ./p10k.zsh
	cp ~/.zshrc ./zshrc

push:
	cp kitty.conf ~/.config/kitty/
	cp current-theme.conf ~/.config/kitty/
	cp config.toml ~/.config/helix/
	cp languages.toml ~/.config/helix/
	cp p10k.zsh ~/.p10k.zsh
	cp zshrc ~/.zshrc