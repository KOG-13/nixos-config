{pkgs, ...}:
{
    services.gvfs = {
        enable = true;
        package = pkgs.gvfs;
    };
}
