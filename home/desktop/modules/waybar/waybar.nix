{ config, pkgs, lib, inputs, ...}:
{
    programs.waybar.enable = true;
    home.file = {
        ".config/waybar/config.jsonc".source = ./waybar.jsonc;
        ".config/waybar/style.css".source = ./style.css;

    };

}
