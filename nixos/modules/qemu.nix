{ pkgs, ... }:
{
  programs.virt-manager.enable = true;
  virtualisation.libvirtd = {
    enable = true;
    qemu.vhostUserPackages = with pkgs; [ virtiofsd ];
  };
  environment.systemPackages = with pkgs; [
    dnsmasq
  ];
  networking.firewall.trustedInterfaces = [ "virbr0" ];
  systemd.tmpfiles.rules = [ "L+ /var/lib/qemu/firmware - - - - ${pkgs.qemu}/share/qemu/firmware" ];
  virtualisation.spiceUSBRedirection.enable = true;
}
