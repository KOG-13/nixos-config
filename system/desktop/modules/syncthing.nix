{
    services = {
        syncthing = {
            enable = true;
            group = "users";
            user = "kog";
            dataDir = "/home/kog/Sync/";
            configDir = "/home/kog/.config/syncthing";
            overrideDevices = true;
            overrideFolders = true;
            settings = {
                devices = {
                    "Pixel9" = { id = "PN42UKV-VOVTQYZ-EITX4NM-I5ADBY6-AKTTRJM-2RR5DNK-QTYLOQF-HF2PIAA"; };
                };
                folders = {
                    "Books" = {
                        path = "/home/kog/Books/";
                        devices = [ "Pixel9" ];
                    };
                    "Keepass" = {
                        path = "/home/kog/Documents/Keepass";
                        devices = [ "Pixel9" ];
                    };
                    "Sync" = {
                        path = "/home/kog/Sync/";
                        devices = [ "Pixel9" ];
                    };
                };
            };
        };
    };
}
