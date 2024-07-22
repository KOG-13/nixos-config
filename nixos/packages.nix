{ pkgs, ... }: {
	nixpkgs.config = {
		allowUnfree = true;
		permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
	};

	environment.systemPackages = with pkgs; [

	#====Desktop apps==============================#	

	##Audio
		audacity # audio editor/mixer
		puddletag # music file metadata editor
		spotify

	##Communication
		discord
		thunderbird # email client
		zoom-us # zoom chat

	##Creativity
		aseprite # Pixel art creation tool
		blender # 3D modeling software
		blockbench # Voxel modeling software
		gimp # FOSS Photoshop
		godot_4 # Game development platform
		krita # Drawing program

	##Gaming
		# polymc # open source Minecraft launcher
		steam

	##Productivity
		libreoffice-qt6-still
		mysql-workbench # MySQL editor
		obsidian # Markdown editor
		zed-editor # New text editor

	##Tools
		brave # Web browser
		gparted # GUI partition manager
		keepassxc # Locally hosted password manager
		mullvad-vpn # VPN client
		pcmanfm # File manager
		pika-backup # Backup manager
		newsflash # RSS feed reader for GNOME
		
	##Video
		makemkv # BluRay and DVD ripper
		vlc # Video player

	#====Hyprland=======================================#

		hyprland
		dunst # notification daemon for hyprland 
		libnotify # dependency for dunst
		rofi-wayland # program search
		swww # wallpaper manager
		waybar # taskbar for hyprland
		xdg-desktop-portal-hyprland

	#====GNOME Extensions==============================#

		

	#====CLI Programs==================================#

	## Terminal
		kitty # Terminal emulator
		nix-index # A files database for nixpkgs
		zsh # Terminal shell
	##Productivity
		bluez # bluetooth manager
		bluez-tools # Additional tools to manage bluetooth devices
		btop # TUI system monitor
		git # Version control manager
		lazygit # TUI for git commands
		neovim # best editor
		openssl # Library for SSL and TLD protocols
		ranger # TUI file manager
		unzip # Zip file extracter
		vim # better editor
		wget # File retrieval for HTTP/S, FTP
		yt-dlp # CLI for downloading youtube videos
		zip # File compressor/archiver
	
	## Coding
		gcc # GNU compiler
		nodejs # Javascript framework
		python3 # Python programming language
		rustup # Rust language toolchain installer

	## Daemons
		mpv # music daemon

	## Fun packages
		cava # Audio visualizer
		cbonsai # For people who kill real plants
		cmatrix # RAM Eater 3000
		cowsay # Don't have a cow, man!
		figlet # Big words!
		fortune-kind # Kind words of wisdom
		lolcat # TASTE THE RAINBOW MOTHA FUCKA
		neofetch # System info display
		pfetch # Neofetch Jr.
		pipes # A series of tubes
		pokemonsay # Pokemon!
		pokemon-colorscripts-mac

	## Home Manager
		home-manager

	];

	fonts.packages = with pkgs; [
		jetbrains-mono
		noto-fonts
		noto-fonts-emoji
		twemoji-color-font
		font-awesome
		powerline-fonts
		powerline-symbols
		corefonts
		(nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
	];
        
}
