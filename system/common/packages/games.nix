{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        #polymc
        pokemmo-installer # PokeMMO game installer/launcher

        (retroarch.withCores (cores: with cores; [
            snes9x
            mgba
            desmume 
        ]))
        
        mangohud
		    linuxKernel.packages.linux_zen.xpadneo # package for steam controller compatibility
    ];
}
