{ config, pkgs, user, ...}:
{
    programs.browserpass.enable = true;
    programs.firefox = {
	enable = true;
	profiles = {
	    kieran = {
		search = {
		    force = true;
		    default = "DuckDuckGo";
		    privateDefault = "DuckDuckGo";
		    order = ["DuckDuckGo" "Google"];
		};
		extensions = with pkgs.inputs.firefox-addons; [
		    ublock-origin
		    reddit-enhancement-suite
		    unhook

		];
	    };
	};
	enableGnomeExtensions = true;

    };
}
