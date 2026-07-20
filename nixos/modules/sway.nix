{ config, pkgs, lib, ... }:
{
  programs.sway= {
    enable = true;
    wrapperFeatures = {
      gtk = true;
      base = true;
    };
    # package = pkgs.swayfx;
    xwayland.enable = true;
  }; 
  xdg.portal = {
    enable = true;
    wlr= {
      enable = true;
      settings = {
        screencast = {
          # output_name = "HDMI-A-1";
          # max_fps = 30;
          exec_before = "disable_notifications.sh";
          exec_after = "enable_notifications.sh";
          chooser_type = "simple";
          chooser_cmd = "${pkgs.slurp}/bin/slurp -f 'Monitor: %o' -or";
          # chooser_type = "default";
          # chooser_cmd = "${pkgs.wofi}/bin/wofi --show drun" ;  
        };
      };
    };
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
    ];
  };
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };
}
