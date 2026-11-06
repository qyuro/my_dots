{
  networking = {
    hostName = "nixos"; # Define your hostname.
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowPing = false;
    };
    # nftables.enable = true;
    #FOR TEST GITLAB/DOCKER
    extraHosts = "
        127.0.0.1 gitlab.local tailchat.local
        # 192.168.0.160 xmpp.local
        78.142.230.107 mtm.rebe.capcom.com
        78.142.230.107 dzyiry2ohdgp7.cloudfront.net
        78.142.230.107 d21d59npjlru09.cloudfront.net
      ";
  };
}
