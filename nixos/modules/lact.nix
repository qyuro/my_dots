{ pkgs,config,lib, ...}:
{
  environment.systemPackages = with pkgs ; [ lact ]; 
  systemd.packages = with pkgs ; [ lact ]; 
  systemd.services.lactd.wantedBy = [ "multi-user.target" ];
  # services.lact.enable = true;
}
