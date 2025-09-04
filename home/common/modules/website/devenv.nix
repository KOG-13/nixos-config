{ pkgs, lib, config, inputs, ... }:

{
    packages = [
        pkgs.openssh
        pkgs.git
        pkgs.curl
        pkgs.lsd
    ];
    starship.enable = true;

    languages.javascript = {
        enable = true;
        bun.enable = true;
        bun.install.enable = true;
    };
    languages.typescript.enable = true;
}
