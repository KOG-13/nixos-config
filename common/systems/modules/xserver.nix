/*
{
	services = {
	    xserver = {
		# Enable the X11 windowing system
		enable = true;

		#displayManager.lightdm.enable = true;
		# Enable the XFCE Desktop Environment
		#desktopManager.xfce.enable = true;	

		displayManager.gdm.enable = true;
		desktopManager.gnome.enable = true;

		# Configure keymap in X11	
		xkb = {
		    layout = "us";
		    variant = "";
		};
	    };
	};
}
*/

{
    services.xserver.enable = true;
    services.displayManager.sddm.enable = true;
    services.displayManager.sddm.wayland.enable = true;
    services.desktopManager.plasma6.enable = true;
}
