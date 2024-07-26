{
  programs.nixvim.plugins = {


    # lspkind = {
    #   enable = true;
    #
    #   cmp = {
    #     enable = true;
    #     menu = {
    #       nvim_lsp = "[LSP]";
    #       nvim_lua = "[api]";
    #       path = "[path]";
    #       luasnip = "[snip]";
    #       buffer = "[buffer]";
    #       neorg = "[neorg]";
    #       cmp_tabby = "[Tabby]";
    #     };
    #   };
    # };

    lsp = {
      enable = true;
      servers = {
      	# Javascript / typescript
	tsserver.enable = true;

	# Lua
	lua-ls = {
		enable = true;
		settings.telemetry.enable = false;
	};

	# Rust
	rust-analyzer = {
		enable = true;
		installCargo = true;
		installRustc = true;

	};
	
	pylsp.enable = true;

      };
    };
  };
}
