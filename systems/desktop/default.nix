{
    imports =
        [ 
            ../../common/systems/configuration.nix
            ./hardware-configuration.nix
            ./modules/bundle.nix
        ];

    # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
    networking = {
        hostName = "desktop";
        interfaces.eth0.ipv4.addresses = [{ 
            address = "192.168.1.75";
            prefixLength =24;
        }];
        defaultGateway = "192.168.1.1";
        nameservers = [ "8.8.8.8" ];
    };
    # Configure network proxy if necessary
    # networking.proxy.default = "http://user:password@proxy:port/";
    # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

    system.stateVersion = "24.11"; # Did you read the comment?
}
