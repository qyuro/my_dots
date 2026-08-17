{config,pkgs, ...}:
{
  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;
  #USE_IT_CAUSE_LAZY_CONFIGURATE_FIREWALL
  # networking.firewall.enable = false;
  networking.nftables.enable = true;
  #FOR TEST GITLAB/DOCKER
  networking.extraHosts = "
      127.0.0.1 gitlab.local tailchat.local
    ";
}
