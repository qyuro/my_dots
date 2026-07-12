{
  lib,
  stdenv,
  fetchurl,
  dpkg,
  autoPatchelfHook,
  makeWrapper,
  qt6,
  coreutils,
  lsb-release,
  net-tools,
  iproute2,
  iptables,
  procps,
  glib,
  dbus,
  libGL,
  libX11,
  libSM,
  libICE,
  libXext,
  libXi,
  libXtst,
  e2fsprogs,
  fontconfig,
  freetype,
  libgpg-error,
  openssl,
  cacert,
  ...
}:

let
  runtimeDeps = [
    coreutils
    lsb-release
    net-tools
    iproute2
    iptables
    procps
  ];
in
stdenv.mkDerivation rec {
  pname = "happ-desktop";
  version = "2.18.3";

  src = fetchurl {
    url = "https://github.com/Happ-proxy/happ-desktop/releases/download/${version}/Happ.linux.x64.deb";
    sha256 = "x2G4RCroEWT/FpjjXrCncVoYhkb5zJ0Ckwd10sC5QxQ=";
  };

  nativeBuildInputs = [
    dpkg
    autoPatchelfHook
    makeWrapper
    qt6.wrapQtAppsHook
  ];

  buildInputs = [
    stdenv.cc.cc.lib
    glib
    dbus
    libGL
    libX11
    libSM
    libICE
    libXext
    libXi
    libXtst
    e2fsprogs
    fontconfig
    freetype
    libgpg-error
    qt6.qtwayland
    openssl
  ];

  dontUnpack = true;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/happ $out/share/applications $out/bin

    dpkg -x $src .
    cp -r opt/happ/* $out/happ/

    if [ -d "usr/share" ]; then
      cp -r usr/share/* $out/share/
    fi

    for exe in Happ happd; do
      wrapProgram $out/happ/bin/$exe \
        --prefix LD_LIBRARY_PATH : "${lib.makeLibraryPath [ openssl ]}" \
        --prefix PATH : "${lib.makeBinPath runtimeDeps}" \
        --set SSL_CERT_FILE "${cacert}/etc/ssl/certs/ca-bundle.crt"
    done

    ln -s $out/happ/bin/Happ $out/bin/happ

    runHook postInstall
  '';

  meta = {
    description = "Happ proxy desktop client (VLESS/VMess/Trojan/Shadowsocks) with a TUN daemon";
    homepage = "https://github.com/Happ-proxy/happ-desktop";
    platforms = [ "x86_64-linux" ];
    mainProgram = "happ";
  };
}
