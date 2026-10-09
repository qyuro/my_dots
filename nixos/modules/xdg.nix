{ pkgs,unstable,... }:
{
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      # pkgs.xdg-desktop-portal-hyprland
      xdg-desktop-portal-wlr
      # xdg-desktop-portal-gnome
      # xdg-desktop-portal-gtk
    # ] ++ unstable.xdg-desktop-portal-umbriel;
    ];
  };
}
