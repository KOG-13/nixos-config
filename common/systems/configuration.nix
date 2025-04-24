{ pkgs, inputs, ...}: 
{
    imports =
        [ 
          ./packages/bundle.nix
          ./modules/bundle.nix
        ];

    # Set experimental features
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    # Enable unfree packates
    nixpkgs.config.allowUnfree = true; 

    # Set your time zone.
    time.timeZone = "America/New_York";
    # Set time and date to local to work with dual boot
    time.hardwareClockInLocalTime = true;

    # Select internationalisation properties.
    i18n.defaultLocale = "en_US.UTF-8";
    i18n.extraLocaleSettings = {
        LC_ADDRESS = "en_US.UTF-8";
        LC_IDENTIFICATION = "en_US.UTF-8";
        LC_MEASUREMENT = "en_US.UTF-8";
        LC_MONETARY = "en_US.UTF-8";
        LC_NAME = "en_US.UTF-8";
        LC_NUMERIC = "en_US.UTF-8";
        LC_PAPER = "en_US.UTF-8";
        LC_TELEPHONE = "en_US.UTF-8";
        LC_TIME = "en_US.UTF-8";
    };

    # enable wireless networkManager service
    networking.networkmanager.enable = true;

    #SSH Configuration
    services.openssh = {
        enable = true;
        ports = [ 22 443 ];
        settings = {
            PasswordAuthentication = true;
            AllowUsers = [ "kieran" ];
            UseDns = true;
            PermitRootLogin = "yes";  
        };
    };

    # Automatically delete config versions older than 7 days
    nix.gc = {
	      automatic = true;
	      dates = "daily";
	      options = "--delete-older-than 7d";
    };

    xdg.portal.enable = true;
    xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk pkgs.xdg-desktop-portal-kde pkgs.xdg-desktop-portal-wlr ];

    # Enable CUPS to print documents.
    services.printing.enable = true;

    environment = {
        #Add ~/.local/bin to PATH
        localBinInPath = true;

        #Get completion for system packages (e.g. systemd). Added for additional fzf config
        pathsToLink = [ "/share/zsh" ];

        # For electron based applications
        sessionVariables.NIXOS_OZONE_WL = "1";
    };


    boot = {
        # Automatically detecting blu-ray drive
        kernelModules = ["sg"];
        # set linux kernel version
        kernelPackages = pkgs.linuxPackages_latest; 
        initrd.kernelModules = [ "amdgpu" ];
    };



    systemd.tmpfiles.rules = [
        # Ensure kieran owns any new directories under /run/media/kieran
        "d /run/media/kieran 0755 kieran kieran -"
        "Z /run/media/kieran/* 0755 kieran kieran -"
    ];

    #PolyMC Requirement
    nixpkgs.overlays = [ inputs.polymc.overlay ];


    # Enable touchpad support (enabled default in most desktopManager).
    # services.xserver.libinput.enable = true;

    # Some programs need SUID wrappers, can be configured further or are
    # started in user sessions.
    # programs.mtr.enable = true;
    # programs.gnupg.agent = {
    #   enable = true;
    #   enableSSHSupport = true;
    # };

    # List services that you want to enable:

    # Open ports in the firewall.
    # networking.firewall.allowedTCPPorts = [ ... ];
    # networking.firewall.allowedUDPPorts = [ ... ];
    # Or disable the firewall altogether.
    # networking.firewall.enable = false;

    # This value determines the NixOS release from which the default
    # settings for stateful data, like file locations and database versions
    # on your system were taken. It‘s perfectly fine and recommended to leave
    # this value at the release version of the first install of this system.
    # Before changing this value read the documentation for this option
    # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
    system.stateVersion = "24.11"; # Did you read the comment?

}
