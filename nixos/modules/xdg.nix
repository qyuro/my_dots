{pkgs,... }:
{
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      # xdg-desktop-portal-hyprland
      xdg-desktop-portal-gnome
      xdg-desktop-portal-gtk
    ];
    # config.niri = {
      # default = [ "gnome" "gtk" ];
    # };
  };
}
