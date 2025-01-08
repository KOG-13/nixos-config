{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        # Games
        #desmume # DSI emulator
        #atlauncher # minecraft launcher
        #mgba # game boy advance emulator
        #snes9x # SNES emulator
        polymc
        pokemmo-installer # PokeMMO game installer/launcher
        #retroarch-full # Emulator
		    steam # gamer
        mangohud
		    linuxKernel.packages.linux_zen.xpadneo # package for steam controller compatibility
    ];
}
