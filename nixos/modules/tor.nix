{config,pkgs,...}:
{
  services.tor ={
    enable = true;
    enableGeoIP = false;
    torsocks.enable = true;
    openFirewall = true;
    client = {
      enable = true;
    };
    settings = {
      CookieAuthentication = true;  
      AvoidDiskWrites = 1; 
      HardwareAccel = 1;
      SafeLogging = 1;
      NumCPUs = 4;
    };
  };
}
