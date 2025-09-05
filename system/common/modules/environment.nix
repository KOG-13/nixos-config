{
    environment.sessionVariables = {
		    # If your cursor becomes invisible
        WLR_NO_HARDWARE_CURSORS = "1";
        # Hint electron apps to use wayland
        NIXOS_OZONE_WL = "1";
        # XDG_BASE_DIR variables
        XDG_CACHE_HOME = "$HOME/.cache";
        XDG_CONFIG_HOME = "$HOME/.config";
        XDG_DATA_HOME = "$HOME/.local/share";
        XDG_STATE_HOME = "$HOME/.local/state";

        XDG_BIN_HOME = "$HOME/.loca/bin";

        # GO config
        GOPATH = "$XDG_DATA_HOME/go";
        GOMODCACHE = "$XDG_CACHE_HOME/go/mod";
    
        /*
        Todo list
        - go
        - java
        - npm
        - vscode
        - Python?
        */

    };

    environment.variables = { 
		    EDITOR = "nvim"; 
        HYPRSHOT_DIR = "$HOME/Pictures/Screenshots";
	  };
}
