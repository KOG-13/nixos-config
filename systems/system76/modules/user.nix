{ pkgs, ... }:
{
    programs.zsh.enable = true;

	  users = {
		    defaultUserShell = pkgs.zsh;

		    users.kieran = {	
			      isNormalUser = true;
			      description = "Kieran";
			      extraGroups = [ "audio" "networkmanager" "wheel" "input" "uinput" "libvirtd" ];
			      packages = with pkgs; []; # just in case
		    };
	  };

}
