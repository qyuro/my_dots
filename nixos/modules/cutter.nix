{ stable, ... }:
{
  environment.systemPackages = [
    (stable.cutter.withPlugins (
      ps: with ps; [
        jsdec
        rz-ghidra
      ]
    ))
  ];
}
