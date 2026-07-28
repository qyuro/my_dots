{ config, pkgs, ... }:
{
    # services.xserver = {
        # enable = true;
        # displayManager.startx.enable = true;
        # windowManager.awesome = {
            # enable = true;
            # luaModules = with pkgs.luaPackages; [
                # luarocks
                # luadbi-mysql
                # awesome-wm-widgets                
            # ];
        # };
        # windowManager.qtile = {
            # enable = true;
            # extraPackages = python3Packages: with python3Packages; [
                # qtile-extras  
            # ];
        # };
    # };
    services.xserver = {
      displayManager.startx.enable = true;
      enable = true;
      windowManager.i3 = {
        enable = true;  
      };
      windowManager.dwm= {
        enable = true;
        package = pkgs.dwm.overrideAttrs {
            src = ./dwm;
        };
      };
    };
    # services.displayManager= {
        # sddm.enable = true;
        # defaultSession = "none+awesome";
      # };
}
