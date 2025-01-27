{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
    # Internet
		discord # just in case		    
		    vesktop # better discord for linux
		firefox # no longer just for old people
		mullvad-vpn # VPN client
		protonmail-desktop # desktop client for proton mail
    qbittorrent # torrenting software
		syncthing # file synchronization tool
		#synology-drive-client # file synchronizion for Synology NAS 
    nextcloud-client
		thunderbird # email client
    tutanota-desktop
		(vivaldi.overrideAttrs # web browser (additional config for KDE 6 compatibility
		    (oldAttrs: {
			dontWrapQtApps = false;
			dontPatchELF = true;
			nativeBuildInputs = oldAttrs.nativeBuildInputs ++ [pkgs.kdePackages.wrapQtAppsHook];
		    }))
    whatsapp-for-linux # why can't everyone just use signal
    whatsapp-emoji-font # please
		zoom-us # zoom chat
    ];
}
