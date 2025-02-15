{ pkgs, inputs, ... }:{

    environment.systemPackages = with pkgs;
    [
    # Office
		libreoffice-qt6-still # LibreOffice program suite
		obsidian # Markdown editor
    ];
}
