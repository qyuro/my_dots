{inputs,pkgs,config, ...}:
{
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;  

  programs.virt-manager.enable = true;
  
  services.qemuGuest.enable = true;
  services.spice-vdagentd.enable = true;
  
  environment.systemPackages = [
    pkgs.qemu
    pkgs.OVMFFull
    pkgs.dnsmasq
    # inputs.vm-curator.packages.${pkgs.system}.default
  ];
  networking.firewall.trustedInterfaces = [ "virbr0" ];
  systemd.tmpfiles.rules = [ "L+ /var/lib/qemu/firmware - - - - ${pkgs.qemu}/share/qemu/firmware" ];
}
