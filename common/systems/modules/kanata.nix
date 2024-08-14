{
    services.kanata = {
	enable = true;
	keyboards = {
	    internalKeyboards = {
		devices = [
		    "/dev/input/by-id/usb-BY_Tech_NuPhy_Halo96-event-kbd"
		    "/dev/input/by-path/platform-i8042-serio-0-event-kbd"
		];
		extraDefCfg = "process-unmapped-keys yes";
		config = ''
		(defsrc
		    caps
		)

		(defalias
		    escctrl (tap-hold 100 100 esc lctrl)
		)

		(deflayer base
		    @escctrl
		)
		'';
	    };
	};
    };
}
