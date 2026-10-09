{ pkgs,inputs, ... }:
{
  # nixpkgs.overlays = [ inputs.niri.overlays.niri ];
  programs.niri = {
    enable = true;
    # settings.environment."NIXOS_OZONE_WL" = "1";
    # package = pkgs.niri-unstable;
    useNautilus = true;
  };
}
