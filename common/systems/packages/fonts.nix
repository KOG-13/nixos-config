{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        nerd-font-patcher
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
        nerdfonts
        #(nerd-fonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
    ];
}
