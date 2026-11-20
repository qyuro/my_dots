{
  pkgs,
  inputs,
  # config,
  # lib,
  # unstable,
  ...
}:
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
    plugins = [
      # inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprexpo
      # pkgs.hyprlandPlugins.hy3
      # inputs.hyprexpo.packages.${pkgs.stdenv.hostPlatform.system}.default
      inputs.hy3.packages.${pkgs.stdenv.hostPlatform.system}.hy3
      # pkgs.hyprlandPlugins.hyprexpo
    ];
  };
}
