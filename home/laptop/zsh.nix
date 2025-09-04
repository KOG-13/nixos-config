{ config, ... }: 
{
    programs.zsh = {
		    shellAliases = 
			  let
				    flakeDir = "~/nix";
			  in 
        {
			      rebuild = "sudo nixos-rebuild switch --flake ${flakeDir}#laptop";
			      update = "nix flake update ${flakeDir}#laptop";
			      upgrade = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}#laptop";
		    };
	  };
}
