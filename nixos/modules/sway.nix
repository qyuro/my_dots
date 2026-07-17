{ config, pkgs, lib, ... }:
{
  programs.sway= {
    enable = true;
    wrapperFeatures = {
      gtk = true;
      base = true;
    };
    package = pkgs.swayfx;
    # extraPackages = [
      # xdg-desktop-portal-wlr
    # ];
    xwayland.enable = true;
  }; 
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
    ];
  };
}
