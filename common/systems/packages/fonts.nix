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
        noto-fonts-cjk-sans
        #(nerd-fonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
    ] ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues nerd-fonts); 
}
