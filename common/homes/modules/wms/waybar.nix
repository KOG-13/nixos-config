{
    programs.waybar = {
            enable = true;
            systemd = {
                #enable = false;
                #target = "graphical-session.target";
            };

            settings = [{
                layer = "top";
                position = "top";
                height = 30;
                spacing = 4;
                modules-center = [
                    "clock"
                ];
                modules-right = [
                    "pulseaudio"
                    "memory"
                    "cpu"
                    "network"
                    "tray"
                ];
            }];
    
            style = ''
                *{
                    font-family: "JetBrainsMono Nerd Font";
                    font-size: 12pt;
                    font-weight: bold;
                    border-radius: 8px;
                }
            '';
    };

}
