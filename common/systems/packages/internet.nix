{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        discord # just in case		    
            vesktop # better discord for linux
        element-desktop # discord-like chat on fediverse
        librewolf # no longer just for old people
        mullvad-vpn # VPN client
        protonmail-desktop # desktop client for proton mail
        qbittorrent # torrenting software
        syncthing # file synchronization tool
        #synology-drive-client # file synchronizion for Synology NAS 
        nextcloud-client
        telegram-desktop
        thunderbird # email client
        tutanota-desktop
        (vivaldi.overrideAttrs # web browser (additional config for KDE 6 compatibility
            (oldAttrs: {
          dontWrapQtApps = false;
          dontPatchELF = true;
          nativeBuildInputs = oldAttrs.nativeBuildInputs ++ [pkgs.kdePackages.wrapQtAppsHook];
            }))
        whatsapp-for-linux # why can't everyone just use signal
        whatsapp-emoji-font # please. I'm taking this shit off when I'm out of school
        wpa_supplicant_gui
    ];
}
