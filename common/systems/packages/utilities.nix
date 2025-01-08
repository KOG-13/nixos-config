{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
    # Utilites
    bottles
		btop # TUI system monitor
		fastfetch # neofetch replacement
		gnome-multi-writer # GUI USB flasher
		gparted # GUI partition manager
		keepassxc # locally hosted password manager
		kitty # terminal emulator
		lazygit # TUI for git commands
		lsd # ls with more colors
		pcmanfm # file manager
		pfetch # neofetch jr.
		pika-backup # home directory backup manager
		ranger # TUI file manager
		resources # task manager-esque 
		tmux # all of the shells
		unzip # Zip file extracter
		wget # File retrieval for HTTP/S, FTP
    xclip # copy cli commands to clipboard
		xorg.xev # display key presses and codes
		zip # file compressor/archiver
		zoxide # powerful cd
		zsh # terminal shell
		    zplug # zsh plugins
    ];
}
