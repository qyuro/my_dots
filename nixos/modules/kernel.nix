{ pkgs, ... }:
{
  # boot.kernelPackages = pkgs.linuxPackages_xanmod_latest;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  # boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest-lto-zen4;
  # boot.kernelPackages = pkgs.linuxPackages; # stable
  # boot.kernelPackages = pkgs.linuxPackages_zen;
}
