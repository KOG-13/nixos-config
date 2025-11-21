{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        asunder # CD ripper
        aseprite
        #audacity # audio editor/mixer
        calibre # ebub e-reader
        handbrake # tool for encoding video files 
        krita # drawing program
        makemkv # BluRay and DVD ripper
        mkvtoolnix
        mpv # music daemon
        newsflash # RSS feed reader for GNOME
        pavucontrol
        rhythmbox # Export music to Ipod
        spotify # music streaming service
        tenacity #Audacity alternative
        tt-rss
        vlc # video player
        yt-dlp # CLI for downloading youtube videos
    ];
}
