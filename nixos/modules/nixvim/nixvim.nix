{

	imports = [
		./plugins/bundle.nix		
	];

	programs.nixvim = {
		enable = true;

		defaultEditor = true;
		colorscheme.gruvbox.enable = true;
	};
}
