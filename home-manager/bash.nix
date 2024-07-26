{ config, ... }:

{
    programs.bash = {
	enable = true;
	syntaxHighlighting.enable = true;
	shellAliases = 
		let
			flakeDir = "~/nix";
		in {

		rebuild = "sudo nixos-rebuild switch --flake ${flakeDir}";
		update = "nix flake update ${flakeDir}";
		upgrade = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";
		hms = "home-manager switch --flake ${flakeDir}";

		ll = "ls -l";
		cdl = "cd && clear";
		cl = "clear";

		vim = "nvim";
		v = "nvim";

		pkgs = "nvim ~/nix/nixos/packages.nix";
		nixadd = "git add --all ~/nix";
	};
    };
}
