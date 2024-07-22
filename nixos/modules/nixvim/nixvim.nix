{

	imports = [
		./plugins/bundle.nix		
	];

	programs.nixvim = {
		enable = true;

		defaultEditor = true;
		colorschemes.gruvbox.enable = true;
	};
}
