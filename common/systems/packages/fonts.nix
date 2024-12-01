{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [

    ];
		### Fonts ###
    fonts.packages = with pkgs; [
        jetbrains-mono
        noto-fonts
        noto-fonts-emoji
        twemoji-color-font
        font-awesome
        powerline-fonts
        powerline-symbols
        corefonts
        vistafonts # Microsoft fonts ()
        nerd-fonts.symbols-only
        #(nerd-fonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
    ];
}
