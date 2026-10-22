{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    corefonts
    noto-fonts
    symbola
    nerd-fonts.symbols-only
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
    nerd-fonts.iosevka
    noto-fonts-color-emoji
  ];
}
