{
  inputs,
  pkgs,
  unstable,
  bitwig-pkgs,
  ...
}:
{
  nixpkgs.config = {
    allowUnfree = true;
  };
  environment.systemPackages =
    with pkgs;
    [
      (bitwig-pkgs.bitwig-studio6.overrideAttrs (old: {
        postInstall = (old.postInstall or "") + ''
          cp ${./bitwig.jar} $out/libexec/bin/bitwig.jar
        '';
      }))
      inputs.helix.packages.${pkgs.stdenv.hostPlatform.system}.default
      ###for helix
      #FOR_GO
      gopls
      golangci-lint-langserver
      golangci-lint
      gomodifytags
      gotests
      #FOR_C
      clang-tools
      #FOR_PY
      ruff
      ty
      python313Packages.jedi-language-server
      python313Packages.python-lsp-server
      zuban

      # inputs.tele.packages.${pkgs.stdenv.hostPlatform.system}.default
      inputs.fetch.packages.${pkgs.stdenv.hostPlatform.system}.default
      inputs.polymc.packages.${pkgs.stdenv.hostPlatform.system}.default
      inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
      # inputs.ghostty.packages.${pkgs.stdenv.hostPlatform.system}.default
      #TEST XMPP
      gajim
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
      hyprshot
      ###EMACS
      # emacs-pgtk
      # emacsPackages.vterm
      # fd
      # shellcheck
      # isync
      # emacsPackages.mu4e
      # mu
      # imagemagick
      # ripgrep
      # shfmt
      # html-tidy
      # stylelint
      # js-beautify
      # black
      pipenv
      python313Packages.pytest
      # emacsPackages.pytest
      ### FOR PENTEST
      wireshark
      nmap
      ###SOCIETY###
      discord
      # vesktop
      fluffychat
      element-desktop
      ayugram-desktop
      ###FOR_DESKTOP_AND_JOKES###
      wireguard-tools
      ventoy-full-gtk
      obsidian
      chromium
      kdePackages.filelight
      # rmpc
      gparted-full
      p7zip
      hyprpolkitagent
      hyperfine
      opencode
      yazi
      duf
      qpwgraph
      totem
      # rio
      kitty
      nvtopPackages.full
      mangohud
      htop
      awww
      brightnessctl
      eog
      ##EDITORS_FOR_WORD###
      # helix
      onlyoffice-desktopeditors
      ###JUST_NAUTILIUS###
      nautilus
      ###GAMES###
      # osu-lazer-bin
      # opentabletdriver
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
      # typst
      # typstyle
      # tor
      # tor-browser
      # torsocks
      # TRY FROM NUR
      # nur.repos.hythera.waterfox-bin
      # nur.repos.trev.helium
    ]
    ++ (with unstable; [
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
      # xwayland-satellite
      dioxus-cli
    ]);
}
