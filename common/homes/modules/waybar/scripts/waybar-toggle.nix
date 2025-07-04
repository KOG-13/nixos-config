{
  home.file.".local/bin/waybar-toggle.sh" = {
    text = ''
      #!/usr/bin/env bash
      # sleep to make sure it doesn't run before something it shouldn't
      sleep 5

      # Track Waybar status
      waybar_running=false

      while true; do
          # Check if active window fills traditional monitor sizes
          if hyprctl activewindow | grep -qE "size: (3440,1440|2560,1440|1920,1080)"; then
              if $waybar_running; then
                  pkill waybar
                  waybar_running=false
              fi
          else
              if ! $waybar_running; then
                  waybar 
                  waybar_running=true
              fi
          fi
          sleep 1
      done
    '';
    executable = true;
  };
}

