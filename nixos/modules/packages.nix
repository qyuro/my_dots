{config,lib,pkgs,unstable, ...}:
{
  nixpkgs.config = {
    allowUnfree = true;
  };
  environment.systemPackages =
  with pkgs; [
  # rustup
  # FOR PENTEST
  nmap
  #TEST BSPWM
  chromium
  ###WRITERS##
  helix
  # code-cursor
  zed-editor
  ###SOCIETY###
  vesktop
  ayugram-desktop
  ###FOR_DESKTOP_AND_JOKES###
  obsidian
  # fastfetch
  p7zip
  yazi
  # foot
  ghostty
  xwayland
  xwayland-satellite
  nvtopPackages.full
  awww
  brightnessctl
  polkit_gnome
  btop
  # powertop
  gparted
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
  protonplus
  polymc
  ###FOR_PROGRAMMING###
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
  fastfetch
  ]);
}
