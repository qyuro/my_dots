{config,lib,pkgs,unstable, ...}:
{
  programs.mangowc = {
    enable = true;
    package = unstable.mango;
    # package = pkgs.unstable.mangowc;
  };
}
