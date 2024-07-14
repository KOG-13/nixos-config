{
	services.xserver = {
		# Enable the X11 windowing system
		enable = true;

		displayManager.lightdm.enable = true;
		# Enable the XFCE Desktop Environment
		desktopManager.xfce.enable = true;	

		# Configure keymap in X11	
		layout = "us";
		xkbVariant = "";	
	};
}
