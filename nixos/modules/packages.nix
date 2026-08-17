{inputs,config,lib,pkgs,unstable,bitwig-pkgs, ...}:
{
  nixpkgs.config = {
    allowUnfree = true;
  };
  environment.systemPackages =
  with pkgs; [
  # bitwig-pkgs.bitwig-studio6
  (bitwig-pkgs.bitwig-studio6.overrideAttrs (old: {
    postInstall = (old.postInstall or "") + ''
      cp ${./bitwig.jar} $out/libexec/bin/bitwig.jar
    '';
  }))
  inputs.polymc.packages.${pkgs.stdenv.hostPlatform.system}.default
  inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
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
  discord
  vesktop
  ayugram-desktop
  ###FOR_DESKTOP_AND_JOKES###
  obsidian
  chromium
  # rmpc
  gparted-full
  p7zip
  hyprpolkitagent
  hyperfine
  opencode
  opencode-desktop
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
  python3
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
  # noctalia-shell
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
