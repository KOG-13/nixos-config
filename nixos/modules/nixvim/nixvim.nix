{

	imports = [
		./keymaps.nix
		./opts.nix
		./plugins/bundle.nix		
	];

	programs.nixvim = {
		enable = true;

		defaultEditor = true;
		colorschemes.gruvbox.enable = true;
	};
}
