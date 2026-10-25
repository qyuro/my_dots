{pkgs,inputs,unstable,...}:
# let ###FOR FLAKE HYPR

  # pkgs-unstable = inputs.hyprland.inputs.nixpkgs.legacyPackages.${pkgs.stdenv.hostPlatform.system};
# in
{
  hardware.amdgpu.initrd.enable = true;
  hardware.graphics = {
    enable = true;
    enable32Bit = true;

    # package = unstable.pkgs.mesa;
    # package32 = unstable.pkgs.pkgsi686Linux.mesa;

    ###FOR FLAKE HYPR
    # package = pkgs-unstable.mesa;
    # package32 = pkgs-unstable.pkgsi686Linux.mesa;
  };
  hardware.amdgpu.opencl.enable = true;
  hardware.cpu.amd.updateMicrocode = true;
}
