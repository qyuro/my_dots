{
  inputs,
  pkgs,
  # unstable,
  ...
}:
{
  nixpkgs.config = {
    allowUnfree = true;
  };
  environment.systemPackages = with pkgs; [
    ###TEST_NINA
    # inputs.nina.packages.${pkgs.stdenv.hostPlatform.system}.nina

    # inputs.helix.packages.${pkgs.stdenv.hostPlatform.system}.default
    # horizon-launcher
    ###for helix
    #FOR_GO
    gopls
    golangci-lint-langserver
    golangci-lint
    gomodifytags
    gotests
    #FOR_C
    clang-tools
    lldb
    #FOR_PY
    ruff
    ty
    python313Packages.jedi-language-server
    python313Packages.python-lsp-server
    zuban

    # inputs.tele.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.amane.packages.x86_64-linux.default
    # inputs.fetch.packages.${pkgs.stdenv.hostPlatform.system}.default
    polymc
    # inputs.polymc.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    # inputs.ghostty.packages.${pkgs.stdenv.hostPlatform.system}.default

    ghostty
    #TEST XMPP
    movim
    gajim
    dino
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
    ###HYPR_UTIL
    # hyprshot
    ###EMACS
    ripgrep
    html-tidy
    stylelint
    js-beautify
    black
    pipenv
    python313Packages.pytest
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
    hyprpolkitagent
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
    ###FYNE
    fyne
    ###OTHER
    python3
    postman
    nodejs_26
    usbutils
    gnumake
    cmake
    subversion
    gore
    multimarkdown
    nixfmt
    # ida-free
    ###TYPST###
    # typstwriter
    # typst-live
    typst
    # tinymist
    # typstyle
    ###TOR
    tor
    tor-browser
    # torsocks
    # TRY FROM NUR
    # nur.repos.hythera.waterfox-bin
    nur.repos.trev.helium
    ###UNSTABLE
    quickshell
    gcc
    clang
    fasm
    uv
    go
    wails
    protonup-qt
    zig
    fastfetch
    dioxus-cli
    opencode
    quickshell
    ###FOR ESP
    espup
    esp-generate
    espflash
    probe-rs-tools
    ###FOR LOCAL AI
    llama-cpp-vulkan
    # llama-cpp-rocm
    # llama-cpp
  ];
}
