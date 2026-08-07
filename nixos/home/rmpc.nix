{config,pkgs, ...}:
{
  programs.rmpc.enable = true;
  home.packages = with pkgs; [
    mpd
    mpc
  ];
  services.mpd = {
    enable = true;
    musicDirectory = "/home/hxteher/Music";
    extraConfig = ''
    audio_output {
      type "pipewire"
      name "PipeWire"
      mixer_type "software"
    }
    auto_update "yes"
  '';
  };
}
