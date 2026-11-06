{pkgs,...}:
{
  environment.systemPackages = with pkgs;[
    (cutter.withPlugins (ps: with ps; [
      jsdec
      rz-ghidra
    ]))
  ];
}
