{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
    # Games
		desmume # DSI emulator
		atlauncher # minecraft launcher
		mgba # game boy advance emulator
		snes9x # SNES emulator
		steam # gamer
		    linuxKernel.packages.linux_zen.xpadneo # package for steam controller compatibility
    ];
}
