{config,lib,pkgs,unstable, ...}:
{
  nixpkgs.config = {
    allowUnfree = true;
  };
  environment.systemPackages =
  with pkgs; [
  #for sway
  ###EMACS
  emacs
  fd
  shellcheck
  symbola
  ripgrep
  ### FOR PENTEST
  nmap
  chromium
  ###WRITERS##
  helix
  # code-cursor
  zed-editor
  ###SOCIETY###
  vesktop
  _64gram
  ayugram-desktop
  ###FOR_DESKTOP_AND_JOKES###
  obsidian
  p7zip
  yazi
  kitty
  ghostty
  xwayland
  nvtopPackages.full
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
