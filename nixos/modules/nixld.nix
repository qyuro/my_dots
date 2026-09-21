{pkgs,...}:
{
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
      glib
      nspr
      nss
      dbus
      atk
      at-spi2-atk
      cups
      cairo
      gtk3
      pango

      libX11
      libXcomposite
      libXdamage
      libXext
      libXfixes
      libXrandr
      libxcb
      libxkbcommon

      mesa
      expat
      systemd
      alsa-lib    
  ];
}
