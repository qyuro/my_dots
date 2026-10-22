{pkgs,config,lib,inputs, ...}:
{
  wayland.windowManager.hyprland = {
    enable = true;
    configType = "lua";
    extraConfig = ''
    hl.on("hyprland.start", function ()
      -- hl.exec_cmd("${pkgs.hyprpolkitagent}/libexec/hyprpolkitagent")
    end)
    ${builtins.readFile ./hypr/hyprland.lua}
    '';
    xwayland.enable = true;
    package = null;
    portalPackage = null;
    # package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    # portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    # plugins = [
      # inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprexpo
    # ];
  };

}
