{
 services.resolved = {
    enable = true;
    dnssec = "true";
    domains = [ "~." ];
    fallbackDns = [ "1.1.1.1" "1.0.0.1" "8.8.8.8" ];
    dnsovertls = "false";
  }; 
}
