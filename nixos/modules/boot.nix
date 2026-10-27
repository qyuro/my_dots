{
  # boot.kernelParams = [ "amdgpu.dc=1" ];
  # boot.initrd.systemd.enable = true;
  boot.initrd.prepend = ["${./acpi_override.cpio}"];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
}
