{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        polymc
        pokemmo-installer # PokeMMO game installer/launcher
        #retroarch-full # Emulator
		    steam # gamer
        mangohud
		    linuxKernel.packages.linux_zen.xpadneo # package for steam controller compatibility
    ];
}
