{ bitwig-pkgs, pkgs, ... }:
let
  # графика из той же ревизии nixpkgs, что и Bitwig (там glibc 2.42)
  bwGraphics = with bitwig-pkgs; [
    mesa
    libglvnd
    vulkan-loader
  ];
in
{
  environment.systemPackages = with pkgs; [
    (bitwig-pkgs.bitwig-studio6.overrideAttrs (old: {
      postInstall = (old.postInstall or "") + ''
          		cp ${./bitwig.jar} $out/libexec/bin/bitwig.jar
        	'';
      postFixup = (old.postFixup or "") + ''
        wrapProgram $out/bin/bitwig-studio \
          --prefix LD_LIBRARY_PATH : "${lib.makeLibraryPath bwGraphics}" \
          --set-default LIBGL_DRIVERS_PATH "${bitwig-pkgs.mesa}/lib/dri" \
          --set-default VK_DRIVER_FILES "${bitwig-pkgs.mesa}/share/vulkan/icd.d/radeon_icd.x86_64.json"
      '';
    }))
  ];
}
