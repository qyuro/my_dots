{ config, pkgs, ... }:
{
    # services.xserver.xkb.layout = "us";
    # services.xserver = {
        # enable = true;
        # windowManager.awesome = {
            # enable = true;
            # luaModules = with pkgs.luaPackages; [
                # luarocks
                # luadbi-mysql
                # awesome-wm-widgets                
            # ];
        # };
    # };
    services.xserver = {
      enable = true;
      windowManager.bspwm = {
        enable = true;
      };
    };
    # services.displayManager= {
        # sddm.enable = true;
        # defaultSession = "none+awesome";
      # };
}
