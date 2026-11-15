# { unstable, ... }:

{
  services.fprintd = {
    enable = true;
    # package = pkgs.unstable.fprintd;
    # package = unstable.fprintd;
  };
  security.pam.services = {
    sudo.fprintAuth = true;
    ly.fprintAuth = true;
    quickshell-lock = {
      fprintAuth = true;
      unixAuth = true;
    };
  };
}
