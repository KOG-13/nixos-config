{ pkgs, ...}:
{
  hardware.opengl = {
    enable = true;
    #driSupport = true;
    #driSupport32Bit = true;
  };

  services.xserver.videoDrivers = ["amdgpu"];  

  environment.systemPackages = with pkgs; [
      mangohud
    ];

	programs.steam = {
		enable = true;
    gamescopeSession.enable = true;
		remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
		dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
		localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
	};

  programs.gamemode.enable = true;
}
