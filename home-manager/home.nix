{ config, pkgs, ... }: {

	imports = [
		./modules/bundle.nix
	];

	home = {
		username = "kieran";
		homeDirectory = "/home/kieran";
		stateVersion = "24.05";
	};	
}

