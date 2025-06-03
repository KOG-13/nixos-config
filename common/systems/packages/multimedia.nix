{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        asunder # CD ripper
        aseprite
        audacity # audio editor/mixer
        beets
        calibre # ebub e-reader
        freetube # youtube client 	
        handbrake # tool for encoding video files 
        krita # drawing program
        makemkv # BluRay and DVD ripper
        mpv # music daemon
        newsflash # RSS feed reader for GNOME
        pavucontrol
        puddletag # music file metadata editor
        rhythmbox # Export music to Ipod
        spotify # music streaming service
        strawberry-qt6 # Music file/CD player
        vlc # video player
        yt-dlp # CLI for downloading youtube videos
    ];
}
