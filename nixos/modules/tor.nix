{
  services.tor = {
    enable = true;
    enableGeoIP = false;
    torsocks.enable = true;
    openFirewall = true;
    client = {
      enable = true;
    };
    settings = {
      SocksPort = [
        "127.0.0.1:9050"
      ];
      SafeSocks = true;
      TestSocks = true;

      AvoidDiskWrites = 1;

      DownloadExtraInfo = false;

      SafeLogging = 1;

      # CookieAuthentication = true;
      # HardwareAccel = 1;
    };
  };
}
