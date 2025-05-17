{ pkgs, ... }:

# https://nix-community.github.io/home-manager/options.html#opt-programs.firefox.profiles

# URL for extenstions
let
    addon_URL = name: "https://addons.mozilla.org/firefox/downloads/latest/${name}/latest.xpi";
in
{
    programs.librewolf = {
        enable = true;

        # Additional settings: https://mozilla.github.io/policy-templates/
        policies = {

        };

        # information on different profiles
        profiles = {
            # profile specific preferences
            settings = {
            };
        };

        # Settings that take effect across all profiles
        preferences = {
            "broswer.aboutConfig.showWarning" = false; # disable about:config warning


        }; 
    };
}
