{ config, ... }: {
	programs.zsh = {
		enable = true;
		enableCompletion = true;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;

		initExtra = ''
			bash -c 'fortune | pokemonsay'
		'';

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
		};

		history.size = 1000;
		history.path = "${config.xdg.dataHome}/zsh/history";

		oh-my-zsh = {
			enable = true;
			plugins = [ "git" "sudo" ];
			theme = "agnoster";
		};
	};
}
