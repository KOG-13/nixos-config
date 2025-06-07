{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        polymc
        pokemmo-installer # PokeMMO game installer/launcher
        /*
        (retroarch.override {
            cores = with libretro; [
              genesis-plus-gx
              snes9x
              beetle-psx-hw
            ];
          }
        )
        */
		    steam # gamer
        mangohud
		    linuxKernel.packages.linux_zen.xpadneo # package for steam controller compatibility
    ];
}
