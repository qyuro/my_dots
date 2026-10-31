{ pkgs,inputs, ... }:
{
  # nixpkgs.overlays = [ inputs.niri.overlays.niri ];
  programs.niri = {
    enable = true;
    # package = pkgs.niri-unstable;
    useNautilus = true;
  };
  environment.systemPackages = with pkgs;[
    xwayland-satellite
  ];
  
}
