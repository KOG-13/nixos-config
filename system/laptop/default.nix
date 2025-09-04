{
    imports =
        [ 
            ../common/configuration.nix
            #../../common/systems/configuration.nix
            ./hardware-configuration.nix
            ./modules/bundle.nix 
        ];

    networking = {
        hostName = "laptop";
    };
    # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

    # Configure network proxy if necessary
    # networking.proxy.default = "http://user:password@proxy:port/";
    # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
    system.stateVersion = "25.05"; # Did you read the comment?
}
