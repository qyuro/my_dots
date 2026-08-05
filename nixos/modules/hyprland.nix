{unstable,pkgs,config, ...}:
{
  programs.hyprland={
    enable = true;
    package = unstable.pkgs.hyprland;
    portalPackage = unstable.pkgs.xdg-desktop-portal-hyprland;
    # package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    # portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    xwayland.enable = true;
    withUWSM = false;
  };
  # xdg.portal = {
  #   enable = true;
  #   extraPortals = with unstable.pkgs; [
  #     unstable.xdg-desktop-portal-hyprland
  #   ];
  # };
    environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };
  # environment.systemPackages = [
    # inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hy3
    # unstable.pkgs.hyprlandPlugins.hy3
  # ];

}
