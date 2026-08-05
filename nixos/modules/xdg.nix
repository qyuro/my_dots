{unstable,pkgs,config, ...}:
{
  xdg.portal = {
    enable = true;
    extraPortals =  [
      unstable.xdg-desktop-portal-hyprland
    ];
  };
}
