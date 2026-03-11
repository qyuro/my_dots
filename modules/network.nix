{
  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;
  #USE_IT_CAUSE_LAZY_CONFIGURATE_FIREWALL
  networking.firewall.enable = false;
}
