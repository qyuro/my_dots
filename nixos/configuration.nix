{
  imports = [
    ./hardware-configuration.nix
    ./modules/my_modules.nix
  ];
  #UNFREE
  nixpkgs.config = {
    allowUnfree = true;
    android_sdk.accept_license = true;
    permittedInsecurePackages = [
      "ventoy-gtk3-1.1.12"
    ];
  };
  # nixpkgs.hostPlatform = {
  #   system = "x86_64-linux";
  #   gcc.arch = "znver4";
  # };
  #FLAKES
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  system.stateVersion = "26.05";

}
