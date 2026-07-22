{pkgs,config, ...}:
{
  fonts.packages = with pkgs; [
    noto-fonts
    symbola
  ];
}
