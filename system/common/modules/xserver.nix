{ pkgs, ...}:
{
    services = {
        xserver = {
            enable = true; # Keep this enabled for all desktop managers
            videoDrivers = [ "amdgpu" ];
            #displayManager.gdm.enable = true;
            #desktopManager.gnome.enable = true;
        };
        displayManager.sddm.enable = true;
        displayManager.sddm.wayland.enable = true;
        
        desktopManager.plasma6 = {
            enable = true;
            enableQt5Integration = true;
        };        
    };

    environment.plasma6.excludePackages = with pkgs.kdePackages; [ 
        kwalletmanager
    ];
}


