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
  # users.users.qyuro = {
  #    isNormalUser = true;
  #    extraGroups = [ "wheel" "networkmanager" "audio" "video" "storage" "libvirtd" "users" "input" "gamemode" "power" ]; 
  # };
  # services.openssh.enable = true;
 # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  system.stateVersion = "25.11"; 

}

