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
        ###TEST FROM WIRESHARK
        45.137.148.81 mpsqosprod.notheurope.cloudapp.azure.com
        45.137.148.81 mpsqosprod.northcentralus.cloudapp.azure.com
        45.137.148.81 mpsqosprod.eastus.cloudapp.azure.com
        45.137.148.81 mpsqosprod.eastus2.cloudapp.azure.com
        45.137.148.81 mpsqosprod.centralus.cloudapp.azure.com
        45.137.148.81 mpsqosprod.brazilsouth.cloudapp.azure.com
        45.137.148.81 mpsqosprod.australiaeast.cloudapp.azure.com
        45.137.148.81 mpsqosprod.australiasoutheast.cloudapp.azure.com
        45.137.148.81 mpsqosprod.eastasia.cloudapp.azure.com
        45.137.148.81 mpsqosprod.japanwest.cloudapp.azure.com
        45.137.148.81 mpsqosprod.japaneast.cloudapp.azure.com
        45.137.148.81 mpsqosprod.southeastasia.cloudapp.azure.com
        45.137.148.81 mpsqosprod.southafricanorth.cloudapp.azure.com
        45.137.148.81 mpsqosprod.westeurope.cloudapp.azure.com
        45.137.148.81 mpsqosprod.uaenorth.cloudapp.azure.com
        45.137.148.81 mpsqosprod.westeurope.cloudapp.azure.com
        45.137.148.81 ns1-36.azure-dns.com
        
        45.137.148.81 hjm.rebe.capcom.com
        45.137.148.81 production-us-central1-capi.sf6.streetfighter.com
        45.137.148.81 production-asia-northeast1-capi.sf6.streetfighter.com
        45.137.148.81 production-southamerica-east1-capi.sf6.streetfighter.com
        45.137.148.81 production-europe-west2-capi.sf6.streetfighter.com
        
        45.137.148.81 wlt.rebe.capcom.com
        45.137.148.81 storage.googleapis.com
        
        45.137.148.81 mtm.rebe.capcom.com
        45.137.148.81 dzyiry2ohdgp7.cloudfront.net
        45.137.148.81 d21d59npjlru09.cloudfront.net
        45.137.148.81 7f965.playfabapi.com
        # 78.142.230.107 mtm.rebe.capcom.com
        # 78.142.230.107 dzyiry2ohdgp7.cloudfront.net
        # 78.142.230.107 d21d59npjlru09.cloudfront.net
        # 78.142.230.107 7f965.playfabapi.com
      ";
  };
}
