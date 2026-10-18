{ pkgs,inputs, ... }:
{
  # nixpkgs.overlays = [ inputs.niri.overlays.niri ];
  programs.niri = {
    enable = true;
    # package = pkgs.niri-unstable;
    useNautilus = true;
  };
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

}
