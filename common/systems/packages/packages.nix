{ pkgs, inputs, ... }: {
	nixpkgs.config = {
		allowUnfree = true;
		permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
	};

	environment.systemPackages = with pkgs; 
	let 
	    ### RStudio with packages ###
	    RStudio-with-my-packages = rstudioWrapper.override{
		packages = with rPackages; [ 
		    amap
		    dplyr 
		    ggplot2 
		    ggcorrplot
		    hash 
		    tidyverse 
		    fastDummies 
		    devtools 
		    forecast 
		    mlbench
		    treemapify
		    Hmisc
		    corrgram
		    gains
		    ROCR
		    caret
		]; 
	    };
	in
	[
		### Main Packages ###

	    #A
		android-studio # Android development IDE
		    android-studio-tools # additional tools for Android Studio
		aseprite # pixel art creation tool
		atlauncher # minecraft launcher
		audacity # audio editor/mixer
	    #B
		blender # 3D modeling software
		blockbench # voxel modeling software
		bluez # bluetooth manager
		    bluez-tools # Additional tools to manage bluetooth devices
		btop # TUI system monitor
	    #C
		calibre # ebub e-reader
		cava # Audio visualizer
		cbonsai # For people who kill real plants
		cmatrix # RAM Eater 3000
		cool-retro-term
		cowsay # Don't have a cow, man!
	    #D
		desmume # DSI emulator
		discord # just in case		    
		    vesktop # better discord for linux
	    #E 
	    #F
		fastfetch
		figlet # Big words!
		firefox
		fortune-kind # Kind words of wisdom
		freetube # youtube client 	
		fzf # fuzzy finder
	    #G
		gimp # FOSS Photoshop
		git # Version control manager
		gnome-multi-writer # GUI USB flasher
		godot_4 # game development platform
		gparted # GUI partition manager
	    #H
		handbrake # tool for encoding video files 
		home-manager
	    #I 
	    #J
		jetbrains.idea-community # Java/Kotlin IDE
	    #K
		kanata # keyboard remapper (for using esc in vim)
		keepassxc # locally hosted password manager
		kitty # Terminal emulator
		krita # drawing program
	    #L
		lazygit # TUI for git commands
		libaacs # library to access AACS protected Blu-Ray disks
		libbluray # library to access Blu-Ray disks for playback
		libreoffice-qt6-still # LibreOffice program suite
		lolcat # TASTE THE RAINBOW MOTHA FUCKA
		lsd
	    #M
		makemkv # BluRay and DVD ripper
		mgba # game boy advance emulator
		mullvad-vpn # VPN client
		mpv # music daemon
		mysql-workbench # MySQL editor
	    #N
		#neovim # best editor
		inputs.nixvim.packages.${system}.default
		newsflash # RSS feed reader for GNOME
		nix-index # A files database for nixpkgs
	    #O
		obsidian # Markdown editor
		openssl # Library for SSL and TLD protocols
	    #P
		pcmanfm # file manager
		pfetch # Neofetch Jr.
		pika-backup # home directory backup manager
		pipes # A series of tubes
		pokemmo-installer # PokeMMO game installer/launcher
		pokemon-colorscripts-mac
		pokemonsay # Pokemon!
		protonmail-desktop # desktop client for proton mail
		puddletag # music file metadata editor
	    #Q 
	    #R
		ranger # TUI file manager
		resources # task manager-esque 
    ripgrep
	    #S
		screenkey # key press display for hyprland
		snes9x # SNES emulator
		spotify # music streaming service
		steam # gaming
		    linuxKernel.packages.linux_zen.xpadneo # package for steam controller compatibility
		starship # Makes zsh look nice
		syncthing # file synchronization tool
		synology-drive-client # file synchronizion for Synology NAS 
	    #T
		thunderbird # email client
		tmux
	    #U
		unzip # Zip file extracter
		usbutils # additional tools for cli
	    #V
		virt-manager
		    qemu  
		    libvirt
		(vivaldi.overrideAttrs # web browser (additional config for KDE 6 compatibility
		    (oldAttrs: {
			dontWrapQtApps = false;
			dontPatchELF = true;
			nativeBuildInputs = oldAttrs.nativeBuildInputs ++ [pkgs.kdePackages.wrapQtAppsHook];
		    }))
		vlc # video player
	    #W
		wget # File retrieval for HTTP/S, FTP
	    #X
		xorg.xev # display key presses and codes
	    #Y
		yt-dlp # CLI for downloading youtube videos
	    #Z
		zip # File compressor/archiver
		zoom-us # zoom chat
		zoxide # powerful cd
		zsh # Terminal shell
		    zplug # zsh plugins
    

		### Custom Packages ###

		#(import ./devflake.nix { inherit pkgs; }) 
		# Example of creating custom package from .nix files

		### Hyprland Packages ###
		hyprland
		dolphin # File Manager
		dunst # notification daemon for hyprland 
		libnotify # dependency for dunst
		rofi-wayland # program search
		swww # wallpaper manager
		waybar # taskbar for hyprland
		xdg-desktop-portal-hyprland
		wev # wayland xev
		wl-clipboard
		cliphist
		
	
		### Coding Packages ###
		gcc # GNU compiler
		nodejs # Javascript framework
		python3 # Python programming language
		rustc # Rust 
		cargo # Rust package manager
		go # golang language
		mysql84 #MySQL Language 
		cmake # C/C++ Compiler
		RStudio-with-my-packages # RStudio with packages declared above
		kotlin # Java-like language
		(python311.withPackages (ps: with ps; [ # Python 3.11 with declared packages
		    numpy
		    scipy
		    pandas
		    jupyterlab
		    statsmodels
		    scikitlearn
		    seaborn
		    matplotlib
		    opencv4
		]))


	];

		### Fonts ###
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
