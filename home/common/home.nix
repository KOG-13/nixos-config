{ config, pkgs, ... }: {

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




