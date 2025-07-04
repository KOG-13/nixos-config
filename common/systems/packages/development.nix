{ pkgs, inputs, ... }:{

    nixpkgs.config = {
        allowUnfree = true;
        permittedInsecurePackages = [ "electron-25.9.0"];
    };

    environment.systemPackages = with pkgs; [
        android-studio # android development IDE
            android-studio-tools # additional tools for Android Studio
        #devenv # I already spend enough of my life managing linux
        git # version control manager
        godot_4 # game development platform
        #mysql-workbench # MySQL editor
        inputs.nixvim.packages.${system}.default # custom neovim config via nixvim
        virt-manager
            qemu  
            libvirt
    ];
}
