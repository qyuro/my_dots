{config,lib,pkgs,unstable, ...}:
{
  nixpkgs.config = {
    allowUnfree = true;
  };
  environment.systemPackages =
  with pkgs; [
  ###WRITERS##
  helix
  code-cursor
  zed-editor
  ###SOCIETY###
  vesktop
  ayugram-desktop
  ###FOR_DESKTOP_AND_JOKES###
  obsidian
  fastfetch
  p7zip
  ghostty
  xwayland-satellite
  nvtopPackages.full
  swww
  brightnessctl
  polkit_gnome
  btop
  powertop
  gparted
  blender
  eog
  ventoy-full-gtk
  kdePackages.ark
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
  ###FOR_PROGRAMMING###
  lazygit
  tree
  python313
  # uv
  #ida-free
  ###TYPST###
  typstwriter
  typst-live
  typst
  typstyle
  #tor
  tor-browser
  torsocks
 # TEST THIS FROM AMPRESNAD  GPU stuff 
  # amdvlk
  # rocm-opencl-icd
  # glaxnimate
  # TRY FROM NUR
  nur.repos.hythera.waterfox-bin
  ] ++ (with unstable;[
  quickshell
  noctalia-shell
  ghidra-bin
  gcc
  clang
  fasm
  telegram-desktop
  rustc
  cargo
  uv
  go
  rustfmt
  clippy
  rust-analyzer
  ]);
   nixpkgs.config.permittedInsecurePackages = [
                "ventoy-1.1.10"
                "ventoy-gtk3-1.1.10"
  ];
}
