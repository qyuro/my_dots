{
  # boot.kernelParams = [ "amdgpu.dc=1" ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
}
