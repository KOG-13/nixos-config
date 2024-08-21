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
	#tsserver.enable = true;

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
	
	# C++
	cmake.enable = true;

	# CSS
	#cssls.enable = true;

	# Golang
	gopls.enable = true;
	#golangci_lint_ls.enable = true;

	# HTML
	#html.enable = true;

	# HTMX
	#htmx.enable = true;
	
	#Nix 
	nixd.enable = true;	

	# Python
	pylyzer.enable = true;
	
	# Ruby
	ruby-lsp.enable = true;

	# SQL
	sqls.enable = true;

	# Svelte
	#svelte.enable = true;

	# Tailwind
	#tailwindcss.enable = true;

      };
    };
  };
}
