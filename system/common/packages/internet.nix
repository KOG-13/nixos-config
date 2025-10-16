{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        discord # just in case		    
            vesktop # better discord for linux
        element-desktop # discord-like chat on fediverse
        hexchat
        librewolf # no longer just for old people
        mullvad-vpn # VPN client
        qbittorrent # torrenting software
        syncthing # file synchronization tool
        #synology-drive-client # file synchronizion for Synology NAS 
        #nextcloud-client
        telegram-desktop
        thunderbird # email client
        (vivaldi.overrideAttrs # web browser (additional config for KDE 6 compatibility
            (oldAttrs: {
          dontWrapQtApps = false;
          dontPatchELF = true;
          nativeBuildInputs = oldAttrs.nativeBuildInputs ++ [pkgs.kdePackages.wrapQtAppsHook];
            }))
        wpa_supplicant_gui
    ];
}
