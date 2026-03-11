{config,pkgs,...}:
{
  services.desktopManager.gnome.enable = true;

  # To disable installing GNOME's suite of applications
  # and only be left with GNOME shell.
  services.gnome.core-apps.enable = false;
  services.gnome.core-developer-tools.enable = false;
  services.gnome.games.enable = false;


  #GNOME connector browser
  services.gnome.gnome-browser-connector.enable = true;
}
