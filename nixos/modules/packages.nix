{
  inputs,
  pkgs,
  unstable,
  ...
}:

{
  nixpkgs.config = {
    allowUnfree = true;
  };
  environment.systemPackages = with pkgs; [

    ###FROM FLAKES
    nxv
    # horizon-launcher
    inputs.amane.packages.x86_64-linux.default
    polymc
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    #XMPP
    movim
    gajim
    dino
    ###WINE
    wineWow64Packages.yabridge
    winetricks
    yabridge
    yabridgectl
    # (yabridgectl.override { wine = wineWow64Packages.stagingFull; })
    ###FORGAME
    faugus-launcher
    ###TONELIB
    carla
    neural-amp-modeler-lv2
    guitarix
    guitarix-vst
    ### FOR PENTEST
    john
    python314Packages.dirsearch
    burpsuite
    netcat
    gdb
    # pwndbg
    pwntools
    binutils
    file
    checksec
    strace
    ltrace
    ghidra-bin
    wireshark
    nmap
    ###SOCIETY###
    discord
    # vesktop
    # cinny-desktop
    fluffychat
    element-desktop
    ayugram-desktop
    ###FOR_DESKTOP_AND_JOKES###
    aria2
    gopass
    pinentry-curses
    dosbox-staging
    wireguard-tools
    # ventoy-full-gtk
    obsidian
    chromium
    kdePackages.filelight
    gparted-full
    p7zip
    hyperfine
    yazi
    duf
    qpwgraph
    totem
    kitty
    nvtopPackages.full
    mangohud
    htop
    awww
    brightnessctl
    eog
    cava
    onlyoffice-desktopeditors
    nautilus
    osu-lazer-bin
    qbittorrent
    ###FOR_PROGRAMMING###
    typescript
    typescript-language-server
    ###FOR RUST
    rustup
    #for dx
    # androidsdk
    # android-tools
    # android-studio
    # jdk
    # binaryen
    # dioxus-cli -chekc unstable
    ###FOR WAILS
    webkitgtk_4_1
    webkitgtk_6_0
    gtk3
    nsis
    upx
    ###OTHER
    postman
    nodejs_26
    usbutils
    subversion
    # gore
    multimarkdown
    # ida-free
    ###TYPST###
    # typst-live
    typst
    ###TOR
    tor
    tor-browser
    # TRY FROM NUR
    nur.repos.trev.helium
    ###UNSTABLE
    # go
    unstable.protonup-qt
    zig
    fastfetch
    dioxus-cli
    unstable.opencode
    unstable.quickshell
    ###FOR ESP
    unstable.espup
    unstable.esp-generate
    unstable.espflash
    unstable.probe-rs-tools
    ###FOR LOCAL AI
    unstable.llama-cpp-vulkan
  ];
}
