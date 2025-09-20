{ pkgs, ... }:
{
    programs.zsh.enable = true;

	  users = {
		    defaultUserShell = pkgs.zsh;

		    users.kog = {	
			      isNormalUser = true;
			      description = "KOG";
			      extraGroups = [ "video" "audio" "networkmanager" "wheel" "input" "uinput" "libvirtd" ];
			      packages = with pkgs; []; # just in case
		    };
	  };

}
