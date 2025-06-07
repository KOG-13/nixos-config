{
    wayland.windowManager.hyprland = {
	  enable = true;
	  xwayland.enable = true;
	
    # Refer to the wiki for more information
    # https://wiki.hyprland.org/Configuration/Configuring-Hyprland/

    settings = {

	      # See https://wiki.hyprland.org/Configuring/Monitors/
	      monitor = ",preferred,auto,auto";

    
	      exec-once = [
            "swww-daemon"
            "swww img ~/Pictures/Wallpapers/Ultrawide wallpapers/Pixel Art Wallpaper.png"
            #"killall waybar"
            "waybar-toggle.sh"
            #"waybar & disown" # ¯\_(ツ)_/¯ if it works, it works
	      ];


	      env = [
            "XCURSOR_SIZE,24"
            "HYPRCURSOR_SIZE,24"
            #"XDG_SCREENSHOTS_DIR,~/Pictures/Screenshots"
	      ];

        general = {
            gaps_in = 5;
            gaps_out = 18;
            border_size = 2;
            #"col.active_border" = "rgba(33ccffee) rdba(00ff99ee) 45deg";
            "col.active_border" = "rgba(f0bb78ee) rdba(543a14ee) 45deg";
            "col.inactive_border" = "rgba(595959aa)";

            # Set to true enable resizing windows by clicking and dragging on borders and gaps
            resize_on_border = false;

            # Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on 
            allow_tearing = false;

            layout = "dwindle";

        };

        
        decoration = {
            rounding = 2;

            /*
            blur = {
                enabled = true;
                size = 16;
                passes = 2;
                new_optimizations = true;
            };
            */

            #drop_shadow = true;
            #shadow_range = 4;
            #shadow_render_power = 3;
            #"col.shadow" = "rgba(1a1a1aee)";
        };

        animations = {
            enabled = true;

            # See https://wiki.hyprland.org/Configuring/Animations/ for more

            bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

            animation = [
                "windows, 	 	1, 7, myBezier"
                "windowsOut, 	1, 7, default, popin 80%"
                "border,		1, 10, default"
                "borderangle, 	1, 8, default"
                "fade, 		1, 7, default"
                "workspaces, 	1, 6, default" 
            ];
        };

        # https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
        dwindle = {
            pseudotile = true; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
            preserve_split = true; # You probably want this
        
        };

        # https://wiki.hyprland.org/Configuring/Master-Layout/
        master = {
            new_status = "master";
        };

        misc = {
            animate_manual_resizes = true;
            animate_mouse_windowdragging = true;
            enable_swallow = true;
            force_default_wallpaper = 0; # Set to 0 or 1 to disable the anime mascot wallpapers
            disable_hyprland_logo = false; # If true disables the random hyprland logo/anime girl backgroud :( 
        };

        cursor = {
            no_warps = false;
        };

        # For whenever we get this to work on the laptop
        gestures = {
            workspace_swipe = true;
            workspace_swipe_fingers = 3;
            workspace_swipe_invert = false;
            workspace_swipe_distance = 200;
            workspace_swipe_forever = true;
        };


        input = {
            kb_layout = "us";
            kb_variant = "";
            kb_model = "";
            kb_options = "";
            kb_rules = "";

            follow_mouse = 1;

            sensitivity = 0; # -1.0 - 1.0, 0 means no modification

            #touchpad = {
            #	natural_scoll = false;
            #};
        };	

        "$mainMod" = "SUPER";
        bind = [

            "$mainMod, Return, exec, kitty"
            "$mainMod, T, exec, kitty"
            "$mainMod, Q, killactive,"
            "$mainMod, M, exit,"
            "$mainMod, E, exec, dolphin"
            "$mainMod, F, togglefloating,"
            "$mainMod, D, exec, rofi -show run"
            "$mainMod, P, pseudo, # dwindle"
            #"$mainMod, J, togglesplit, # dwindle"
            "$mainMod, W, exec, pkill waybar"
            "$mainMod SHIFT, W, exec, waybar"


            # Move focus with mainMod + arrow keys
            "$mainMod, left,  movefocus, l"
            "$mainMod, right, movefocus, r"
            "$mainMod, up,    movefocus, u"
            "$mainMod, down,  movefocus, d"
            # Vim key alternative
            "$mainMod, H,  movefocus, l"
            "$mainMod, L,  movefocus, r"
            "$mainMod, K,  movefocus, u"
            "$mainMod, J,  movefocus, d"

            # Moving windows
            "$mainMod SHIFT, left,  swapwindow, l"
            "$mainMod SHIFT, right, swapwindow, r"
            "$mainMod SHIFT, up,    swapwindow, u"
            "$mainMod SHIFT, down,  swapwindow, d"
            # Vim key alternative
            "$mainMod SHIFT, H,  swapwindow, l"
            "$mainMod SHIFT, L, swapwindow, r"
            "$mainMod SHIFT, K,    swapwindow, u"
            "$mainMod SHIFT, J,  swapwindow, d"

            # Window resizing                     X  Y
            "$mainMod CTRL, left,  resizeactive, -60 0"
            "$mainMod CTRL, right, resizeactive,  60 0"
            "$mainMod CTRL, up,    resizeactive,  0 -60"
            "$mainMod CTRL, down,  resizeactive,  0  60"
            # Vim key alterantive
            "$mainMod CTRL, H,  resizeactive, -60 0"
            "$mainMod CTRL, L, resizeactive,  60 0"
            "$mainMod CTRL, K,    resizeactive,  0 -60"
            "$mainMod CTRL, J,  resizeactive,  0  60"

            # Switch workspaces with mainMod + [0-9]
            "$mainMod, 1, workspace, 1"
            "$mainMod, 2, workspace, 2"
            "$mainMod, 3, workspace, 3"
            "$mainMod, 4, workspace, 4"
            "$mainMod, 5, workspace, 5"
            "$mainMod, 6, workspace, 6"
            "$mainMod, 7, workspace, 7"
            "$mainMod, 8, workspace, 8"
            "$mainMod, 9, workspace, 9"
            "$mainMod, 0, workspace, 10"

            # Move active window to a workspace with mainMod + SHIFT + [0-9]
            "$mainMod SHIFT, 1, movetoworkspacesilent, 1"
            "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
            "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
            "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
            "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
            "$mainMod SHIFT, 6, movetoworkspacesilent, 6"
            "$mainMod SHIFT, 7, movetoworkspacesilent, 7"
            "$mainMod SHIFT, 8, movetoworkspacesilent, 8"
            "$mainMod SHIFT, 9, movetoworkspacesilent, 9"
            "$mainMod SHIFT, 0, movetoworkspacesilent, 10"

            # Scroll through existing workspaces with mainMod + scroll
            "$mainMod, mouse_down, workspace, e+1"
            "$mainMod, mouse_up, workspace, e-1"
            
            # Keyboard backlight
            "$mainMod, F3, exec, brightnessctl -d *::kbd_backlight set +33%"
            "$mainMod, F2, exec, brightnessctl -d *::kbd_backlight set 33%-"

            # Volume and Media Control
            ", XF86AudioRaiseVolume, exec, pamixer -i 5 "
            ", XF86AudioLowerVolume, exec, pamixer -d 5 "
            ", XF86AudioMute, exec, pamixer -t"
            ", XF86AudioMicMute, exec, pamixer --default-source -m"
            
            # Brightness control
            ", XF86MonBrightnessDown, exec, brightnessctl set 5%- "
            ", XF86MonBrightnessUp, exec, brightnessctl set +5% "

            # Configuration files
            ''$mainMod SHIFT, N, exec, alacritty -e sh -c "rb"''
            ''$mainMod SHIFT, C, exec, alacritty -e sh -c "conf"''
            ''$mainMod SHIFT, H, exec, alacritty -e sh -c "nvim ~/nix/home-manager/modules/wms/hyprland.nix"''
            ''$mainMod SHIFT, W, exec, alacritty -e sh -c "nvim ~/nix/home-manager/modules/wms/waybar.nix''
            '', Print, exec, grim -g "$(slurp)" - | swappy -f -''

            # Waybar
            "$mainMod, B, exec, pkill -SIGUSR1 waybar"
            "$mainMod, W, exec, pkill -SIGUSR2 waybar"

            # Disable all effects
            "$mainMod Shift, G, exec, ~/.config/hypr/gamemode.sh "
        ];

    };
    };
}


