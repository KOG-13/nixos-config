{ config, pkgs, lib, inputs, ...}:

{
    programs.waybar = {
        enable = true;
        settings = {
           mainBar = {
                "layer" = "top";
                "position" = "top";
                "height" = 30;
                "spacing" = 4;

                modules-left = [
                    "hyprland/workspaces"
                ];
                
                modules-center = [
                    "clock"
                ];
                modules-right = [
                    "pulseaudio"
                    "memory"
                    "cpu"
                    "network"
                ];

                "hyprland/workspaces" = {
                    #"disable-scroll" = true;
                    "all-outputs" = false;
                    "active-only" = false;
                    "on-click" = "activate";
                    "on-scroll-up" = "hyprctl dispatch workspace -1";
                    "on-scroll-down" = "hyprctl dispatch workspace +1";
                    persistent-workspaces = {
                        "*" = [1 2 3 4];
                    };
                    
                };
           }; 

        };   

        style = builtins.readFile ./style.css;
    };

}
