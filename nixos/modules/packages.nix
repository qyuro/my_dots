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
  inputs.ghostty.packages.${pkgs.stdenv.hostPlatform.system}.default
  # inputs.nina.packages.${pkgs.stdenv.hostPlatform.system}.default
  # polymc
  ###FOR X
  # polybarFull
  # hyprpolkitagent
  # hyprtoolkit
  faugus-launcher
  ###TONELIB
  guitarix
  guitarix-vst
  neural-amp-modeler-lv2
  tonelib-gfx
  ###for sway
  hyprshot
  # grim
  ###EMACS
  emacs-pgtk
  fd
  shellcheck
  isync
  # emacsPackages.mbsync
  emacsPackages.mu4e
  mu
  # emacsPackages.vterm
  ripgrep
  shfmt
  html-tidy
  stylelint
  js-beautify
  ### FOR PENTEST
  wireshark
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
  # obsidian
  chromium
  # rmpc
  gparted-full
  p7zip
  hyprpolkitagent
  hyperfine
  opencode
  yazi
  qpwgraph
  totem
  rio
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
  ###FOR_PROGRAMMING###
  ###FOR WAILS
  webkitgtk_4_1
  webkitgtk_6_0
  gtk3
  nsis
  upx

  python3
  postman
  nodejs_26
  usbutils
  gnumake
  cmake
  gopls
  gomodifytags
  gotests
  gore
  multimarkdown
  nixfmt
  ida-free
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
  wails
  protonup-qt
  obsidian
  zig
  fastfetch
  ]);
}
