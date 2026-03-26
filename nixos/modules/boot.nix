{config,pkgs,...}:
{
   boot.loader = {
     efi = {
       canTouchEfiVariables = true;
       efiSysMountPoint = "/boot";
     };
     grub = {
       gfxmodeEfi = "2880x1800";
       theme = "${pkgs.catppuccin-grub}";
       efiSupport = true;
       device = "nodev";
       useOSProber = true;
       #for 2880x1800
       fontSize = 22;
     };
   };
  boot.loader.systemd-boot.enable = false;
  boot ={
    # plymouth = {
      # enable = true;
      # theme = "spinner";

    # };
    consoleLogLevel = 3;
    initrd.verbose = false;
    kernelParams = [
      # "quiet"
      "udev.log_level=3"
      # "reboot=efi"
      # "acpi=force"
      # "systemd.show_status=auto"
    ];
    };
    boot.initrd.kernelModules = [ "amdgpu" ];
    # boot.kernelPatches = [{
      # name = "acpi-table-upgrade";
      # patch = null;
      # extraConfig = ''
        # ACPI_TABLE_UPGRADE y
      # '';
    # }];
    # boot.initrd.prepend = [
       # "${/etc/nixos/acpi_override.cpio}"     # абсолютный путь к вашему файлу
    # ];
  
    # loader = {
    #   # systemd-boot.enable = true;
    #   efi.canTouchEfiVariables = true;
    #    limine = {
    #      enable = true;
    #      efiSupport = true;
    #    }; 
    # };
  
   # boot.loader.systemd-boot.enable = true;
   # boot.loader.efi.canTouchEfiVariables = true;
}
