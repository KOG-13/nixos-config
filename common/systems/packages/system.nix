{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        bluez # bluetooth manager
            bluez-tools # additional tools to manage bluetooth devices
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
        qt6.qtwayland
        ripgrep # CLI regex
        starship # makes zsh look nice
        usbutils # additional tools for cli
    ];
}
