{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
    # misc
		cbonsai # for people who kill real plants
		cmatrix # RAM Eater 3000
		cool-retro-term # pretend you're older than you really are
		cowsay # Don't have a cow, man!
		figlet # Big words!
		fortune-kind # kind words of wisdom
		#cava # audio visualizer
		lolcat # TASTE THE RAINBOW MOTHA FUCKA
		pipes # A series of tubes
		pokemmo-installer # PokeMMO game installer/launcher
		pokemon-colorscripts-mac # echo some pokemon 
		pokemonsay # Pokemon!
    polymc
    ];
}
