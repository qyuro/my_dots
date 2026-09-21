{inputs,config,lib,pkgs,unstable,bitwig-pkgs, ...}:
{
  nixpkgs.config = {
    allowUnfree = true;
  };
  environment.systemPackages =
  with pkgs; [
  (bitwig-pkgs.bitwig-studio6.overrideAttrs (old: {
    postInstall = (old.postInstall or "") + ''
      cp ${./bitwig.jar} $out/libexec/bin/bitwig.jar
    '';
  }))
  inputs.polymc.packages.${pkgs.stdenv.hostPlatform.system}.default
  inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  inputs.ghostty.packages.${pkgs.stdenv.hostPlatform.system}.default
  ### SUCKLESS WAYLAND
  # hevel
  # neuwm
  # neumenu
  # neuswc
  # neubar
  # wawa
  # hst
  # swclock
  # klatka
  xwayland
  xwayland-satellite
  uxn12
  ###WINE
  wineWow64Packages.staging
  winetricks
  yabridge
  yabridgectl
  ###FORGAME
  faugus-launcher
  ###TONELIB
  guitarix
  guitarix-vst
  neural-amp-modeler-lv2
  tonelib-gfx
  ###HYPR_UTIL
  hyprshot
  ###EMACS
  emacs-pgtk
  fd
  shellcheck
  isync
  emacsPackages.mu4e
  mu
  imagemagick
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
  ventoy-full-gtk
  obsidian
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
  nvtopPackages.full
  htop
  awww
  brightnessctl
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
  typescript
  typescript-language-server
  ###FOR WAILS
  webkitgtk_4_1
  webkitgtk_6_0
  gtk3
  nsis
  upx

  ###FYNE
  fyne
   
  python3
  postman
  nodejs_26
  usbutils
  gnumake
  cmake
  gopls
  gomodifytags
  gotests
  subversion
  gore
  multimarkdown
  nixfmt
  # ida-free
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
  # obsidian
  zig
  fastfetch
  ]);
}
