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
            ms-python.vscode-pylance
            ms-azuretools.vscode-docker
            ms-vscode-remote.remote-ssh
            ms-vscode-remote.remote-ssh-edit
            formulahendry.code-runner # Code Runner
            ritwickdey.liveserver # Live web server
            esbenp.prettier-vscode # Code formatter
            eamodio.gitlens
            ms-vscode.cpptools-extension-pack
            visualstudioexptteam.intellicode-api-usage-examples
            ms-dotnettools.csharp
            ecmel.vscode-html-css
            golang.go
            formulahendry.auto-close-tag
            yzhang.markdown-all-in-one
            christian-kohler.npm-intellisense
            bradlc.vscode-tailwindcss
            dracula-theme.theme-dracula
            vscode-icons-team.vscode-icons
            #inferrinizzard.prettier-sql-vscode
            #mtxr.sqltools
            #alexcvzz.vscode-sqlite
        ]
        
        ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
            {
                name = "vscode-pets";
                publisher = "tonybaloney";
                version = "1.27.0";
                sha256 = "656256e58da3cc9953827cacd8617ee6d0c112c9f7c9952a946798c3005ff73a";
            }
            {
                name = "javascriptsnippets";
                publisher = "xabikos";
                version = "1.8.0";
                sha256 = "86de969b55fbce27a7f9f8ccbfceb8a8ff8ecf833a5fa7f64578eb4e1511afa7";
            }
            {
                name = "vscode-thunder-client";
                publisher = "rangav";
                version = "2.33.2";
                sha256 = "43e8c8e1d27846b660ff803b08a99a28c1851a3e953a2fbdb826d6e5d7e509f8";
            }
            /*{
                name = "mssql";
                publisher = "ms-mssql";
                version = "1.27.0";
                sha256 = "c1bd46ccc39f2673212e3b8c4b40fc2ee121e75f8d0e0fe9abdeef047823a14b";
            }*/
            {
                name = "prettier-sql-vscode";
                publisher = "inferrinizzard";
                version = "1.6.0";
                sha256 = "97aa5fffebaff019f8b83317d026f34a3c9d4d2b6bef7b91639e7401df709bb4";
            }
            {
                name = "sqltools";
                publisher = "mtxr";
                version = "0.28.3";
                sha256 = "6d3ac70218fcbb0cd12089b388ab0e8b365ff3e937b7e56b90e799ac5c7b487f";
            }
            {
                name = "vscode-sqlite";
                publisher = "alexcvzz";
                version = "0.14.1";
                sha256 = "8ce42446006453026ea43f9c468fca45a84546cf365f72b8f43c92c3a1a553c5";
            }
            {
                name = "sqltools-driver-mysql";
                publisher = "mtxr";
                version = "0.6.3";
                sha256 = "08ef9d726bda491397d6bbb176b2df4213c5dc780406d7ac13424fca2cc3ee2a";
            }
        ];
        
    })
    ];
}
