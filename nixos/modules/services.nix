{config,pkgs,...}:
{
  systemd.services = {
    ollama-model-loader.enable = false;
    NetworkManager-wait-online.enable = false;  
    plymouth-quit-wait.enable=false;
    fstrim.enable = true;

  };
  
}
