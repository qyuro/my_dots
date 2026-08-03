{config, pkgs, ...}:
{

  imports = [
    ./home/my_modules.nix
  ];
  home = {
    username = "hxteher";
    homeDirectory = "/home/hxteher";
    stateVersion = "26.05";
  };
  programs.home-manager.enable = true;
}
