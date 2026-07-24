{pkgs,config, ...}:
{
  programs.hyprland={
    enable = true;
    xwayland.enable = true;
  };
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
    ];
  };
    environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };
  environment.systemPackages = [
    pkgs.hyprlandPlugins.hy3
  ];

}
