{pkgs,config,lib, ...}:
{
  wayland.windowManager.hyprland = {
    enable = true;
    configType = "lua";
    extraConfig = ''
    hl.on("hyprland.start", function ()
      hl.exec_cmd("${pkgs.hyprpolkitagent}/libexec/hyprpolkitagent")
      hl.exec_cmd("hyprctl plugin load ${pkgs.hyprlandPlugins.hy3}/lib/libhy3.so")
    end)
    ${builtins.readFile ./hypr/hyprland.lua}
    '';
    xwayland.enable = true;
  };

}
