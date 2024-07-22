#{ config, pkgs, ... }:
#{
#	boot.loader = if config.networking.hostName == "nix-desktop" then {
#		systemd-boot.enable = true;
#		efi.canTouchEfiVariables = true;
#	} else if config.networking.hostName == "nix-laptop" then {
#		grub.enable = true;
#		grub.device = "/dev/sda";
#		grub.useOSProber = true;
#	} else {
#		# Default bootloader settings
#	};
#}
#{
#	boot.loader.grub.enable = true;
#	boot.loader.grub.device = "/dev/sda";
#	boot.loader.grub.useOSProber = true;
#}

{
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;
}
