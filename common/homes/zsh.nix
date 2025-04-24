{ config, pkgs, ... }: 
{
    programs.zsh = {
		    enable = true;
		    enableCompletion = false; # disabled for fzf and fzf-tab
		    autosuggestion.enable = true;
		    syntaxHighlighting.enable = true;


		    history.size = 5000;
		    history.path = "${config.xdg.dataHome}/zsh/history";
		    history.share = true;

		    # zsh plugins
		    zplug = {
		        enable = true;
		        plugins = [
			          { name = "xvoland/Extract"; } # Extract files from any compressed file format 
			          { name = "softmoth/zsh-vim-mode"; } # vim mode in zsh (after jumping between multiple github
							  # discussions, I found this just happens to be the one that 
							  # works with fzf
			          { name = "Aloxaf/fzf-tab"; }	# fzf functionality for tab completion
		        ];
		    };


		    initExtra = ''
			      # Alternate version of cowsay, but with pokemon
			      #bash -c 'fortune | pokemonsay'

			      # runs bash script in ./modules/ to setup fzf (best solution here was the easiest one)
			      if [ -f ~/nix/common/homes/modules/initFzf.sh ]; then
			          bash ~/nix/common/homes/modules/initFzf.sh 
			      fi

			      # for using fzf for tab completion (again, something I wasn't able to implement with nix)
			      zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

			      # Shell integrations
			      eval "$(fzf --zsh)"
			      eval "$(zoxide init zsh)"

			      # Echos a random pokemon when opening a new shell
			      #pokemon-colorscripts --random

			      # Fixes highlight issues in tmux nvim (works with another line in tmux.conf)
			      export TERM=xterm-256color
			      # Fixes delayed escape issue in tmux nvim (see additional config line in tmux.conf)
			      set ttimeoutlen=100
		    '';

		    shellAliases = 
			  let
				    flakeDir = "~/nix";
			  in {

            #rebuild = "sudo nixos-rebuild switch --flake ${flakeDir}";
            #update = "nix flake update ${flakeDir}";
            #upgrade = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";
            hms = "home-manager switch --flake ${flakeDir}";

            l = "lsd -lh"; # replaces "l = 'lsd -alh'
            ls = "lsd";
            ll = "lsd -l";
            lh = "ls -ld .??*"; # Show only hidden files
            cdl = "cd && clear";
            cl = "clear";

            zl = "z && clear";

            cal = "firefox --new-window 'https://calendar.google.com/'";

            vim = "nvim";
            v = "nvim";
            vf = "vim $(fzf)";

            fetch = "fastfetch";

            kanata-fix = "modprobe uinput"; # in case kanata stops being enabled, run this

            pkgs = "cd ~/nix/common/systems/packages/";
            nixadd = "git -C ~/nix add --all";
            nixstatus = "git -C ~/nix status";
            dev = "nix develop --command zsh";
            flake = "[ -f ./flake.nix ] && nvim ./flake.nix || echo 'flake.nix not found in the current directory'";

            push = "cat ~/Documents/key.txt | xclip -selection clipboard && git push";
            
            obsidian  = "obsidian --disable-gpu";
            pipes = "pipes.sh";

        };



    };
}
