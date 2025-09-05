{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        btop # TUI system monitor
        fastfetch # neofetch replacement
        fish #YOU KNOW WHAT THAT MEANS
        gnome-multi-writer # GUI USB flasher
        gparted # GUI partition manager
        hyprshot # wayland screenshot taker
        libsForQt5.kalk # Calculator for KDE
        keepassxc # locally hosted password manager
        kitty # terminal emulator
        lazygit # TUI for git commands
        lsd # ls with more colors
        pamixer
        pcmanfm # file manager
        pfetch # neofetch jr.
        picard # music metadata editer
        pika-backup # home directory backup manager
        poppler_utils # utility package for altering pdfs
        ranger # TUI file manager
        resources # task manager-esque 
        rockbox-utility
        tmux # all of the shells
        unzip # Zip file extracter
        wget # File retrieval for HTTP/S, FTP
        xclip # copy cli commands to clipboard
        xorg.xev # display key presses and codes
        zip # file compressor/archiver
        zotero # Site your source!!
        zoxide # powerful cd
        zsh # terminal shell
            zplug # zsh plugins
    ];
}
