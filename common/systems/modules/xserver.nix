{
	services.xserver = {
		# Enable the X11 windowing system
		enable = true;

		#displayManager.lightdm.enable = true;
		# Enable the XFCE Desktop Environment
		#desktopManager.xfce.enable = true;	

		displayManager.gdm.enable = true;
		desktopManager.gnome.enable = true;

		# Configure keymap in X11	
		#xkb.layout = "us";
		#xkb.variant = "";	

		xkb = {
		    layout = "us";
		    variant = "";
		};
	};
}
