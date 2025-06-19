{ config, pkgs, ... }: {

    # Enable the xdg module to manage user directories
	  #programs.xdg.enable = true;
	
	  # Customize user directory names
	  #programs.xdg.userDirs = {
	  #	desktop = "desktop";
	  #	documents = "documents";
	  #	downloads = "downloads";
	  #	music = "music";
	  #	pictures = "pictures";
	  #	publicShare = "public";
	  #	templates = "templates";
	  #	videos = "videos";
	  #};

	  # Apply the configuration
	  #home.sessionVariables = {
	  #	XDG_DESKTOP_DIR = "$HOME/desktop";
	  #	XDG_DOCUMENTS_DIR = "$HOME/documents";
	  #	XDG_DOWNLOAD_DIR = "$HOME/downloads";
	  #	XDG_MUSIC_DIR = "$HOME/music";
	  #	XDG_PICTURES_DIR = "$HOME/pictures";
	  #	XDG_PUBLICSHARE_DIR = "$HOME/public";
	  #	XDG_TEMPLATES_DIR = "$HOME/templates";
	  #	XDG_VIDEOS_DIR = "$HOME/videos";
	  #};

	  imports = [
		    ./zsh.nix
		    ./modules/bundle.nix
		    ./bash.nix
	  ];

	  home = {
		    username = "kieran";
		    homeDirectory = "/home/kieran";
		    stateVersion = "25.05";
	  };	

    xdg.mimeApps = {
        enable = true;
            defaultApplications = {
                "text/html" = "librewolf.desktop";
                "x-scheme-handler/http" = "librewolf.desktop";
                "x-scheme-handler/https" = "librewolf.desktop";
                "x-scheme-handler/about" = "librewolf.desktop";
                "x-scheme-handler/unknown" = "librewolf.desktop";
            };
    };

    dconf.settings = {
        "org/virt-manager/virt-manager/connections" = {
            autocorrect = ["qemu:///system"];
            uris = ["qemu:///system"];
        };
    };

}




