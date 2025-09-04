{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        cbonsai # for people who can't take care of real plants
        cmatrix # pretend you're a hacker
        cool-retro-term # pretend you're older than you really are
        cowsay # Don't have a cow, man!
        figlet # Big words!
        fortune-kind # kind words of wisdom
        #cava # audio visualizer
        lolcat # TASTE THE RAINBOW MOTHA FUCKA
        pipes # A series of tubes
        pokemon-colorscripts-mac # echo some pokemon 
        pokemonsay # Pokemon!
    ];
}
