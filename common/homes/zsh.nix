{ config, pkgs, ... }: {
	programs.zsh = {
		enable = true;
		enableCompletion = false;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;


		history.size = 5000;
		history.path = "${config.xdg.dataHome}/zsh/history";
		history.share = true;

		zplug = {
		    enable = true;
		    plugins = [
			{ name = "xvoland/Extract"; } 
			{ name = "softmoth/zsh-vim-mode"; }
			{ name = "Aloxaf/fzf-tab"; }
		    ];
		};


		initExtra = ''
			#bash -c 'fortune | pokemonsay'


			if [ -f ~/nix/common/homes/modules/initFzf.sh ]; then
			    bash ~/nix/common/homes/modules/initFzf.sh 
			fi

			zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

			# Shell integrations
			eval "$(fzf --zsh)"
			eval "$(zoxide init zsh)"

			pokemon-colorscripts --random
		'';

		shellAliases = 
			let
				flakeDir = "~/nix";
			in {

			#rebuild = "sudo nixos-rebuild switch --flake ${flakeDir}";
			#update = "nix flake update ${flakeDir}";
			#upgrade = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";
			hms = "home-manager switch --flake ${flakeDir}";

			ll = "ls -l";
			cdl = "cd && clear";
			cl = "clear";

			vim = "nvim";
			v = "nvim";
			vf = "vim $(fzf)";

			pkgs = "nvim ~/nix/common/systems/packages/packages.nix";
			nixadd = "git -C ~/nix add --all";
			dev = "nix develop";
		};



	};
}
