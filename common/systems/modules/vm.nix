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
    ];

    # Enable dconf (System Management Tool)
    programs.dconf.enable = true;

    programs.virt-manager.enable = true;

    # Add user to libvertd group
    users.groups.libvertd.members = [ "kieran" ];


    # Manage the virtualization services
    virtualisation = {
        libvirtd = {
            enable = true;
            qemu = {
                swtpm.enable = true;
                ovmf.enable = true;
                ovmf.packages = [ pkgs.OVMFFull.fd ];
            };
        };
        spiceUSBRedirection.enable = true;
    };
    services.spice-vdagentd.enable = true;

}
