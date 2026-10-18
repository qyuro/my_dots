{
  networking.wg-quick.interfaces.wg0 = {
    address = ["10.10.0.2/32"];
    privateKeyFile = "/etc/wireguard/client.key";
    mtu = 1300;
    peers = [
      {
        publicKey = "OisUydLFDcU9SQoESR3w8Vi6LtrLwfmFtYIxxcF2XAA=";
        allowedIPs = [ "10.10.0.1/32" ];
        endpoint = "188.134.74.44:51820";
        persistentKeepalive = 25;
      }
    ];
  };
}
