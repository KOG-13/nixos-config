{ config, pkgs, ... }: 
{
    imports = [
        ./zsh.nix
        ./modules/bundle.nix
        ./bash.nix
    ];
}

