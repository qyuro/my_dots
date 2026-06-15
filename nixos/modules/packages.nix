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
  # fastfetch
  p7zip
  foot
  ghostty
  xwayland
  xwayland-satellite
  nvtopPackages.full
  awww
  brightnessctl
  polkit_gnome
  btop
  powertop
  gparted
  eog
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
  # polymc
  ###FOR_PROGRAMMING###
  lazygit
  tree
  nodejs
  pnpm
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
  # nur.repos.hythera.waterfox-bin
  nur.repos.trev.helium
  # FOR NEU_WAYLAND
  # hevel
  # shko
  neuswc
  neumenu
  neuwm
  swiv
  neuwld
  neuipc
  wawa
  ] ++ (with unstable;[
  quickshell
  noctalia-shell
  ghidra-bin
  gcc
  clang
  fasm
  telegram-desktop
  # rustc
  # cargo
  uv
  go
  # rustfmt
  # clippy
  # rust-analyzer
  # rustup
  # openssl
  # openssl_oqs
  # openssl_legacy
  # pkg-config
  fastfetch
  ]);
}
