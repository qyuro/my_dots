{ pkgs,inputs, ... }:
{
  # nixpkgs.overlays = [ inputs.niri.overlays.niri ];
  programs.niri = {
    enable = true;
    # package = pkgs.niri-unstable;
    useNautilus = true;
  };
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gnome
      xdg-desktop-portal-gtk  
    ];
    # config.niri = {
      # default = [ "gnome" "gtk" ];
        # "org.freedesktop.impl.portal.ScreenCast" = [
        # "gnome"
      # ];

      # "org.freedesktop.impl.portal.Screenshot" = [
        # "gnome"
      # ];
    # };
  };
  environment.systemPackages = with pkgs;[
    xwayland-satellite
  ];
  
}
