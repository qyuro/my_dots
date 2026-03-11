{config,lib,pkgs, ...}:
let 
  pkgs-unstable = import <nixos-unstable> { };
in
{
      nixpkgs.overlays = [
    (import (builtins.fetchTarball "https://github.com/PolyMC/PolyMC/archive/develop.tar.gz")).overlay
    # (import (builtins.fetchTarball "https://github.com/FjordLauncher/FjordLauncher/archive/develop.tar.gz")).overlays.default
  ];
  environment.systemPackages =
  (with pkgs; [
  ###WRITERS##
  helix
  code-cursor
  zed-editor
  ###SOCIETY###
  vesktop
  #ayugram-desktop
  ###FOR_DESKTOP_AND_JOKES###
  obsidian
  fastfetch
  p7zip
  alacritty
  xwayland-satellite
  nvtopPackages.full
  swww
  brightnessctl
  polkit_gnome
  btop
  powertop
  gparted
  ##EDITORS_FOR_WORD###  
  onlyoffice-desktopeditors
  ###RUSSIAN PRIKOL
  zapret
  ###JUST_NAUTILIUS###
  nautilus
  ###GAMES###
  osu-lazer-bin
  opentabletdriver
  qbittorrent
  protonup-qt
  polymc
  # fjordlauncher
  ###FOR_PROGRAMMING###
  go
  rustc
  cargo
  lazygit
  ida-free
  ])
  ++
  (with pkgs-unstable; [
    quickshell
    noctalia-shell
    ghidra-bin
    gcc
    clang
    fasm
    telegram-desktop
  ]);
}
