{pkgs,inputs,...}:
{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    withUWSM = false;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
  };
  # xdg.portal = {
  # enable = true;
  # extraPortals = with pkgs; [
      # xdg-desktop-portal-hyprland
      # inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland
    # ];
  # };
}
