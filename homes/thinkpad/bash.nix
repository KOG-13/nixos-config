{ config, ... }:

{
    programs.bash = {
	enable = true;
	shellAliases = 
		let
			flakeDir = "~/nix";
		in {

		rebuild = "sudo nixos-rebuild switch --flake ${flakeDir}#thinkpad";
		update = "nix flake update ${flakeDir}#thinkpad";
		upgrade = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}#thinkpad";
		#hms = "home-manager switch --flake ${flakeDir}#thinkpad";
	};
    };
}
