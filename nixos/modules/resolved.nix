{
 services.resolved = {
    enable = true;
    # dnssec = "true";
    # domains = [ "~." ];
    # fallbackDns = [ "1.1.1.1" "1.0.0.1" "8.8.8.8" ];
    settings.Resolve = {
      DNSOverTLS = "false";
      DNSSEC = "true";
      Domains = ["~."];
      FallbackDNS = [ "1.1.1.1" "1.0.0.1" "8.8.8.8" ];
    };
    # dnsovertls = "false";
  }; 
}
