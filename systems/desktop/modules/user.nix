{ pkgs, ... }: {
    programs.zsh.enable = true;

    users = {
		    defaultUserShell = pkgs.zsh;

		    users.kieran = {	
			      isNormalUser = true;
			      description = "Kieran";
			      extraGroups = [ "networkmanager" "wheel" "input" "uinput" "libvirtd" "video" "audio" ];
			      packages = with pkgs; []; # just in case
		    };
	  };

}
