{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        hyprland # gee I wonder
        hypridle # idle agent
        hyprlock # screen lock
        brightnessctl
        rofi-wayland
        kdePackages.gwenview
        wl-clipboard
        waybar
        inputs.swww.packages.${pkgs.system}.swww
        cliphist # retains clipboard history in hyprland
        dunst # notification daemon for hyprland 
        libnotify # dependency for dunst
        screenkey # key press display for Hyprland
        wev # wayland xev
        wlogout #logout/shutdown screen
        xdg-desktop-portal-hyprland
        #libsForQt5.qtstyleplugin-kvantum
        #libsForQt5.qt5ct
        #kdePackages.qt6ct
        #gruvbox-kvantum
        xfce.thunar
        xfce.thunar-volman
        #gtk-engine-murrine
        
    ];

}
