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
		#jetbrains.idea-community # Java/Kotlin IDE
		mysql-workbench # MySQL editor
		inputs.nixvim.packages.${system}.default # custom neovim config via nixvim
    RStudio-with-my-packages # Rstudio with the packages above
		virt-manager
		    qemu  
		    libvirt
    (vscode-with-extensions.override {
        vscodeExtensions = with vscode-extensions; [
            bbenoist.nix
            ms-python.python
            ms-azuretools.vscode-docker
            ms-vscode-remote.remote-ssh
        ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
            {
                name = "remote-ssh-edit";
                publisher = "ms-vscode-remote";
                version = "0.47.2";
                sha256 = "1hp6gjh4xp2m1xlm1jsdzxw9d8frkiidhph6nvl24d0h8z34w49g";
            }
        ];
    })
    ];
}
