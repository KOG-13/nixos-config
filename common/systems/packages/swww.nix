{inputs, pkgs, ...}:
{
    environment.systemPackges = [
        inputs.swww.packages.${pkgs.system}.swww
    ];
}
