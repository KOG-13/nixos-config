{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
    #(import ./devflake.nix { inherit pkgs; })
    # Example of creating custom package from .nix files
    ];
}
