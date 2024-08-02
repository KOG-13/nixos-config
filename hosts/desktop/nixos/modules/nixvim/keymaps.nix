{ config, lib, ... }: {
	
	programs.nixvim = {
		globals = {
			mapleader = "\\";
			maplocalleader = "\\";
		};

		keymaps = let
			normal = 
				lib.mapAttrsToList
				(key: action: {
					mode = "n";
					inherit action key;
				})
				{
				#Keybindings for Normal Mode
				
				# Toggle Neotree
				"<leader>t" = ":Neotree toggle<CR>";

				"<C-d>" = "<C-d>zz";
				"<C-u>" = "<C-u>zz";
				"n" = "nzzzv";
				"N" = "Nzzzv";

				# Barbar
				"<leader>n" = ":BufferNext<CR>";
				"<leader>p" = ":BufferPrevious<CR>";
				"<leader>x" = ":BufferClose<CR>";

				# Telescope
				"<leader>ff" = "find_files";
				"<leader>b" = "buffers";
				"<leader>fh" = "help_tags";
				"<leader>gf" = "git_files";
				"<leader>tg" = ":Telescope live_grep<CR>";

				};
			visual = 
				lib.mapAttrsToList
				(key: action: {
					mode = "v";
					inherit action key;
				})
				{};
		in
			config.nixvim.helpers.keymaps.mkKeymaps
			{options.silent = true;}
			(normal ++ visual);
	};
}
