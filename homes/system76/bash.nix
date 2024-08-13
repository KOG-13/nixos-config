{ config, ... }:

{
    programs.bash = {
	enable = true;
	shellAliases = 
		let
			flakeDir = "~/nix";
		in {

		rebuild = "sudo nixos-rebuild switch --flake ${flakeDir}#system76";
		update = "nix flake update ${flakeDir}#system76";
		upgrade = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}#system76";
		#hms = "home-manager switch --flake ${flakeDir}#system76";
	};
    };
}
