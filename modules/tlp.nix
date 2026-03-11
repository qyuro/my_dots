{
  services.tlp = {
    enable = true;
    settings = {
       START_CHARGE_THRESH_BAT0 = 40;
       STOP_CHARGE_THRESH_BAT0 = 80; 
       BATTERY_CARE_LEVEL = "80:40";
    };
  };
  services.power-profiles-daemon.enable = false;
}
