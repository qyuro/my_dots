{inputs,config,lib,pkgs,unstable, ...}:
{
  nixpkgs.config = {
    allowUnfree = true;
  };
  environment.systemPackages =
  with pkgs; [
  inputs.polymc.packages.${pkgs.system}.default
  # polymc
  ###FOR X
  # polybarFull
  faugus-launcher
  ###TONELIB
  tonelib-gfx
  ###for sway
  hyprshot
  # grim
  ###EMACS
  emacs-gtk
  fd
  shellcheck
  # symbola
  emacsPackages.vterm
  ripgrep
  ### FOR PENTEST
  nmap
  ###WRITERS##
  helix
  code-cursor
  zed-editor
  ###SOCIETY###
  vesktop
  ayugram-desktop
  ###FOR_DESKTOP_AND_JOKES###
  obsidian
  chromium
  rmpc
  p7zip
  hyprpolkitagent
  yazi
  totem
  kitty
  xwayland
  nvtopPackages.full
  htop
  awww
  brightnessctl
  # powertop
  eog
  ##EDITORS_FOR_WORD###  
  onlyoffice-desktopeditors
  ###RUSSIAN PRIKOL
  # zapret
  ###JUST_NAUTILIUS###
  nautilus
  ###GAMES###
  # osu-lazer-bin
  # opentabletdriver
  qbittorrent
  # polymc
  ###FOR_PROGRAMMING###
  usbutils
  gnumake
  cmake
  gopls
  gomodifytags
  gotests
  gore
  multimarkdown
  nixfmt
  #ida-free
  ###TYPST###
  # typstwriter
  # typst-live
  # typst
  # typstyle
  #tor
  # tor-browser
  # torsocks
 # TEST THIS FROM AMPRESNAD  GPU stuff 
  # amdvlk
  # rocm-opencl-icd
  # glaxnimate
  # TRY FROM NUR
  # nur.repos.hythera.waterfox-bin
  # nur.repos.trev.helium
  ] ++ (with unstable;[
  quickshell
  noctalia-shell
  ghidra-bin
  gcc
  clang
  fasm
  uv
  go
  protonup-qt
  fastfetch
  ]);
}
