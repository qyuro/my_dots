{config, ... }:
{
  services.xserver.videoDrivers = ["nvidia" "modesetting"];
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
  hardware.nvidia = {
    modesetting.enable = true;
    open = true;
    nvidiaSettings = true;
    dynamicBoost.enable = true;
    powerManagement.enable = true ;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
}
