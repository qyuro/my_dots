{
  networking = {
    hostName = "nixos"; # Define your hostname.
    networkmanager.enable = true;
    firewall = {
      enable = false;
      # allowPing = ;
    };
    nftables.enable = true;
    #FOR TEST GITLAB/DOCKER
    extraHosts = "
        127.0.0.1 gitlab.local tailchat.local
        192.168.0.160 xmpp.local
      ";
  };
}
