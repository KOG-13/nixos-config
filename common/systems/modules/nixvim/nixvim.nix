{

	imports = [
		./keymaps.nix
		./opts.nix
		./plugins/bundle.nix		
	];

	programs.nixvim = {
		enable = true;

		defaultEditor = true;
		colorschemes = {
		    kanagawa.enable = true; 
		    #gruvbox.enable = true;
		};
	};
}
