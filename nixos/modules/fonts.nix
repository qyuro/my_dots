{pkgs,config, ...}:
{
  fonts.packages = with pkgs; [
    noto-fonts
    symbola
    nerd-fonts.symbols-only
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
    nerd-fonts.iosevka
  ];
}
