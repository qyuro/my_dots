{pkgs,config, ...}:
{
  programs.river-classic = {
    enable = true;
    package = pkgs.river;
  };
}
