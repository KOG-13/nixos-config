{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        hyprland # gee I wonder
        hypridle # idle agent
        hyprlock # screen lock
        brightnessctl
        rofi-wayland
        wl-clipboard
        waybar
        inputs.swww.packages.${pkgs.system}.swww
        cliphist # retains clipboard history in hyprland
        kdePackages.dolphin # File Manager
        dunst # notification daemon for hyprland 
        libnotify # dependency for dunst
        screenkey # key press display for Hyprland
        wev # wayland xev
        xdg-desktop-portal-hyprland
    ];
}
