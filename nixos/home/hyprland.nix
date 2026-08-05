{unstable,pkgs,config,lib, ...}:
{
  wayland.windowManager.hyprland = {
    enable = true;
    package = unstable.pkgs.hyprland;
    configType = "lua";
    # extraConfig = builtins.readFile ./hypr/hyprland.lua;
    extraConfig = ''
    hl.on("hyprland.start", function ()
      hl.exec_cmd("hyprctl plugin load ${unstable.pkgs.hyprlandPlugins.hy3}/lib/libhy3.so")
    end)
    ${builtins.readFile ./hypr/hyprland.lua}
    '';
    # xdg.configFile."hypr/hyprland.lua".source = ./hypr/hyprland.lua;
    # plugins = [
       # unstable.pkgs.hyprlandPlugins.hy3
    # ];
    xwayland.enable = true;
    portalPackage = unstable.pkgs.xdg-desktop-portal-hyprland;
  };
    # xdg.configFile."hypr/hyprland.lua".source = ./hypr/hyprland.lua;
}
