{ config, pkgs, ... }: 
{
    imports = [
        ./zsh.nix
        ./modules/bundle.nix
        ./bash.nix
    ];

    #home = {
    #	username = "kieran";
    #	homeDirectory = "/home/kieran";
    #	stateVersion = "24.05";
    #};	

}

