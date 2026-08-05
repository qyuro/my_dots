{pkgs,config,...}:

{
  programs.wayfire = {
    enable = true;
    xwayland.enable = true;
  };
}
