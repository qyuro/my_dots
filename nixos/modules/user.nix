{config,pkgs,lib,...}:

{
  users.users.hxteher= {
     isNormalUser = true;
     extraGroups = [ "wheel" "networkmanager" "audio" "video" "storage" "libvirtd" "users" "input" "gamemode" "power" ]; 
  };
}
