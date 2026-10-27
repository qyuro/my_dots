{ pkgs,unstable, ... }:
{
  programs.sway = {
    enable = true;
    wrapperFeatures = {
      gtk = true;
      base = true;
    };
    # package = unstable.swayfx;
    xwayland.enable = true;
    extraPackages = [];
  };
  xdg.portal = {
    enable = true;
    wlr = {
      enable = true;
      # settings = {
        # screencast = {
          # exec_before = "disable_notifications.sh";
          # exec_after = "enable_notifications.sh";
          # chooser_type = "simple";
          # chooser_cmd = "${pkgs.slurp}/bin/slurp -f 'Monitor: %o' -or";
        # };
      # };
    };
    extraPortals = with pkgs; [
      xdg-desktop-portal-wlr
      xdg-desktop-portal-gtk
    ];
  };
}
