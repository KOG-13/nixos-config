{
  home.file.".local/bin/waybar-restart.sh" = {
    text = ''
      #!/usr/bin/env bash
      # sleep to make sure it doesn't run before something it shouldn't
      sleep 2
      pkill waybar
      sleep 2
      waybar -c ~/.config/waybar/config.jsonc &
    '';
    executable = true;
  };
}

