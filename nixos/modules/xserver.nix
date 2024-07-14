{
	services.xserver = {
		# Enable the X11 windowing system
		enable = true;

		services.xserver.displayManager.lightdm.enable = true;
		# Enable the XFCE Desktop Environment
		services.xserver.desktopManager.xfce.enable = true;	

		# Configure keymap in X11	
		layout = "us";
		xkbVariant = "";	
	};
}
