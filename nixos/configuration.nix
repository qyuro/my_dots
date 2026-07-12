{ config, lib, pkgs, ... }:
{
  imports =
    [ 
      ./hardware-configuration.nix
      ./modules/my_modules.nix
    ];
  #UNFREE
  nixpkgs.config.allowUnfree = true;
  #FLAKES
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "26.05"; 

}

