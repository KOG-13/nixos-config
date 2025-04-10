{ pkgs, inputs, ... }:{

    nixpkgs.config = {
        allowUnfree = true;
        permittedInsecurePackages = [ "electron-25.9.0"];
    };

    environment.systemPackages = with pkgs;
    let 
        ### RStudio with packages ###
        RStudio-with-my-packages = rstudioWrapper.override{
        packages = with rPackages; [ 
            amap
            dplyr 
            ggplot2 
            ggcorrplot
            hash 
            tidyverse 
            fastDummies 
            corrplot
            devtools 
            forecast 
            mlbench
            treemapify
            Hmisc
            corrgram
            gains
            ROC
            caret
        ]; 
          };
      in
    [
    android-studio # android development IDE
		    android-studio-tools # additional tools for Android Studio
    devenv
		git # version control manager
		godot_4 # game development platform
		#mysql-workbench # MySQL editor
		inputs.nixvim.packages.${system}.default # custom neovim config via nixvim
    #jupyter
    #RStudio-with-my-packages # When the hell are they gonna fix this  
		virt-manager
		    qemu  
		    libvirt
    ];
}
