{ inputs, config, pkgs, ... }: {

	  imports = [
		    ./zsh.nix
		    ./modules/bundle.nix
		    ./bash.nix
	  ];

	  home = {
		    username = "kog";
		    homeDirectory = "/home/kog";
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

    qt = {
        enable = true;
        platformTheme.name = "gtk";
        style.name = "gruvbox-dark";
        style.package = pkgs.gruvbox-dark-gtk;
    };

    gtk = {

    enable = true;
        # iconTheme.package = pkgs.nordzy-icon-theme;
        iconTheme.package = pkgs.gruvbox-dark-icons-gtk;
        iconTheme.name = "oomox-gruvbox-dark";

        theme.package = pkgs.gruvbox-dark-gtk;
        theme.name = "gruvbox-dark";
        
        cursorTheme = {
            name = "capitaine-cursors";
            package = pkgs.capitaine-cursors;
            size = 24;
        };
    };

}




