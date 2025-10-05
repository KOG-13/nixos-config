{
    home.file.".local/bin/brightness-ddc.sh" = {
        text = ''
            #! /usr/bin/env bash
            brightness=$(ddcutil getvcp 10 | awk -F 'current value = ' '{print $2}' | cut -d',' -f1)
            echo "Brightness: $brightness%"


        '';
        executable = true;
    };
}
