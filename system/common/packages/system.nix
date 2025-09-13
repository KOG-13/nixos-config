{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        # Bluetooth stuff
        bluez5-experimental         
        bluez-tools
        bluez-alsa
        bluetuith # can transfer files via OBEX
        #########################################
        catppuccin-kde
        ddcutil
        fzf # fuzzy finder
        home-manager # keep your house clean
        hunspell # active spell check in LibreOffice
            hunspellDicts.en_US
            hunspellDicts.en_US-large
        kanata # keyboard remapper (for using esc in vim)
        libaacs # library to access AACS protected Blu-Ray disks
        libbluray # library to access Blu-Ray disks for playback
        nix-index # A files database for nixpkgs
        openssl # Library for SSL and TLD protocols  
        psmisc # for killall command
        qt6.qtwayland
        ripgrep # CLI regex
        sdbus-cpp # Something to make waybar work (I think)
        starship # makes zsh look nice
        tree
        usbutils # additional tools for cli
        wireplumber
    ];
}
