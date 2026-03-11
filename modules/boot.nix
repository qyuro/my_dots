{
  #  boot.loader = {
  #    efi = {
  #      canTouchEfiVariables = true;
  #      efiSysMountPoint = "/boot";
  #    };
  #    grub = {
  #      efiSupport = true;
  #      device = "nodev";
  #      useOSProber = true;
  #    };
  #  };
  # boot.loader.systemd-boot.enable = false;
  boot ={
    plymouth = {
      enable = true;
      theme = "spinner";

    };
    consoleLogLevel = 3;
    initrd.verbose = false;
    kernelParams = [
      "quiet"
      "udev.log_level=3"
      "reboot=efi"
      # "acpi=force"
      "systemd.show_status=auto"
    ];
    # loader = {
    #   # systemd-boot.enable = true;
    #   efi.canTouchEfiVariables = true;
    #    limine = {
    #      enable = true;
    #      efiSupport = true;
    #    }; 
    # };
  };
   boot.loader.systemd-boot.enable = true;
   boot.loader.efi.canTouchEfiVariables = true;
}
