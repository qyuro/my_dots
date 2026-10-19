{
  # boot.kernelParams = [ "amdgpu.dc=1" ];
  # boot.initrd.systemd.enable = true;
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
}
