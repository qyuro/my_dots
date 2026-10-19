{pkgs,...}:
{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    withUWSM = false;
  };
  xdg.portal = {
  enable = true;
  extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
    ];
  };
}
