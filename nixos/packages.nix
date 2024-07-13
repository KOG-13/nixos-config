{ pkgs, ... }: {
	nixpkgs.config = {
		allowUnfree = true;
		permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
	};

	environment.systemPackages = with pkgs; [
		
		#Desktop apps
		audacity # audio editor/mixer
		brave # browser
		kitty # terminal emulator
		mako # notification manager for hyprland (replaces dunst)
		gparted # gui partition manager
		mpv # music daemon
		discord
		obsidian # text editor
		zoom-us # zoom chat
		pcmanfm-qt # file manager and desktop icon manager
		# polymc # open source Minecraft launcher

		# Home Man
		home-manager

		# Coding
		nodejs
		zed-editor # new text editor
		python3 # programming language

		# CLI
		neofetch # system info display
		vim # best editor
		neovim # bestest editor
		wget
		git
		unzip
		btop # system monitor
		nix-index
		ranger # tui file manager
		zip
		yt-dlp # download youtube videos
		openssl
		lazygit
		bluez # bluetooth manager
		bluez-tools
		zsh

		# Hyprland
		waybar # taskbar for hyprland
		libnotify # for notifications
		swww # wallpaper manager
		rofi-wayland # program search
	];

	fonts.packages = with pkgs; [
		jetbrains-mono
		noto-fonts
		noto-fonts-emoji
		twemoji-color-font
		font-awesome
		powerline-fonts
		powerline-symbols
		(nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
	];
        
}
