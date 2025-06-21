{
    programs.git = {
		    enable = true;
		    userName = "Kogara13";
		    userEmail = "kieranogara@gmail.com";
		    #extraConfig.init.defaultBranch = "main";
        # Use `cache` or `store`, or none
        extraConfig = {
          init.defaultBranch = "main";
          credential.helper = "cache"; # Or "store", or "" (empty string to disable entirely)
        };
	  };
}
