{
  home.file.".local/bin/screenlock.sh" = {

    # Overwrite the file
    force = true;
    text = ''
        #! /usr/bin/env bash

        # Mute audio
        wpctl set-mute @DEFAULT_AUDIO_SINK@ 1

        # Run hyprlock and wait until it's closed
        hyprlock

        # Unmute audio
        wpctl set-mute @DEFAULT_AUDIO_SINK@ 0

    '';
    executable = true;
  };
}
