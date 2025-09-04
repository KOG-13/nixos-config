{ pkgs, ...}:
{
    systemd.user.services.swww = {
        Unit = {
            Desciption = "Wallpaper daemon";
            PartOf = ["graphical-session.target"];
        };
        Service = {
            ExecStart = "/run/current-system/sw/bin/swww-daemon";
            ExecStopPost = "${pkgs.swww}/bin/swww kill";
        };
        Install = { WantedBy = [ "graphical-session.target" ]; };
    };
}
