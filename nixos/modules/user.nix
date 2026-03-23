{config,pkgs,lib,...}:

{
  users.users.qyuro = {
     isNormalUser = true;
     extraGroups = [ "wheel" "networkmanager" "audio" "video" "storage" "libvirtd" "users" "input" "gamemode" "power" ]; 
  };
}
