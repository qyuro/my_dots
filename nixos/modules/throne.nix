{ lib, unstable, ... }:
{
  programs.throne = {
    enable = true;
    tunMode = {
      enable = true;
      setuid = true;
    };
    # package = unstable.throne;
  };
}
