{ pkgs, ... }:
{

  environment.variables =
    let
      makePluginPath =
        format:
        (pkgs.lib.makeSearchPath format [
          "$HOME/.nix-profile/lib"
          "/run/current-system/sw/lib"
          "/etc/profiles/per-user/$USER/lib"
        ])
        + ":$HOME/.${format}";
    in
    {
      LV2_PATH = makePluginPath "lv2";
      VST3_PATH = makePluginPath "vst3";
      CLAP_PATH = makePluginPath "clap";
    };
}
