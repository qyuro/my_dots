{
  imports = [
    ./home/default.nix
  ];
  home = {
    username = "hxteher";
    homeDirectory = "/home/hxteher";
    stateVersion = "26.05";
  };

  programs.home-manager.enable = true;
}
