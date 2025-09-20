{ config, pkgs, ...}:
{ 
    # Install Necessary Packages
    environment.systemPackages = with pkgs; [
        virt-manager
        virt-viewer
        spice
        spice spice-gtk
        spice-protocol
        win-virtio
        win-spice
        qemu_kvm
        gnome-boxes
        dnsmasq
        phodav
    ];

    virtualisation.libvirtd = {
        enable = true;
        qemu = {
            swtpm.enable = true;
            ovmf.enable = true;
            ovmf.packages = [ pkgs.OVMFFull.fd ];
        };
    };
    virtualisation.spiceUSBRedirection.enable = true;

    users.groups.libvertd.members = [ "kog" ];
    users.groups.kvm.members = [ "kog" ];
   
    # Enable dconf (System Management Tool)
    programs.dconf.enable = true;

    programs.virt-manager.enable = true;

    # Add user to libvertd group


    # Manage the virtualization services
    services.spice-vdagentd.enable = true;

}
