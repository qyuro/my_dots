{config,pkgs,...}:
{
   # boot.kernelParams = [ "amdgpu.dc=1" ];
   # boot.initrd.kernelModules = [ "amdgpu" ];
   boot.loader.systemd-boot.enable = true;
   boot.loader.efi.canTouchEfiVariables = true;
}
