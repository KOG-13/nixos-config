{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
    # Multimedia
		audacity # audio editor/mixer
		calibre # ebub e-reader
		freetube # youtube client 	
		handbrake # tool for encoding video files 
		krita # drawing program
    leocad
		makemkv # BluRay and DVD ripper
		mpv # music daemon
		newsflash # RSS feed reader for GNOME
		puddletag # music file metadata editor
		spotify # music streaming service
		vlc # video player
		yt-dlp # CLI for downloading youtube videos
    ];
}
