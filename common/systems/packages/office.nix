{ pkgs, inputs, ... }:{

    environment.systemPackages = with pkgs;
    [
        libreoffice-qt6-still # LibreOffice program suite
        obsidian # Markdown editor
    ];
}
