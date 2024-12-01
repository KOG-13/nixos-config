{ pkgs, inputs, ... }:{

    nixpkgs.config = {
        allowUnfree = true;
        permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
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
            ROCR
            caret
        ]; 
          };
      in
    [
    # Development
    android-studio # android development IDE
		    android-studio-tools # additional tools for Android Studio
		git # version control manager
		godot_4 # game development platform
		jetbrains.idea-community # Java/Kotlin IDE
		mysql-workbench # MySQL editor
		inputs.nixvim.packages.${system}.default # custom neovim config via nixvim
    RStudio-with-my-packages # Rstudio with the packages above
		virt-manager
		    qemu  
		    libvirt
    ];
}
