{ config, ... }: {
	programs.zsh = {
		shellAliases = 
			let
				flakeDir = "~/nix";
			in {

			rebuild = "sudo nixos-rebuild switch --flake ${flakeDir}#desktop";
			update = "nix flake update ${flakeDir}#desktop";
			upgrade = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}#desktop";
			#hms = "home-manager switch --flake ${flakeDir}#desktop";

			home-echo = "echo 'This worked'";
		};
	};
}
