{config,pkgs,...}:
{
  systemd.services = {
    # ollama-model-loader.enable = false;
    NetworkManager-wait-online.enable = false;  
    # plymouth-quit-wait.enable=false;
    fstrim.enable = true;
    #TEST FOR NOT AUTO_START
    docker.wantedBy = pkgs.lib.mkForce [];
    libvirtd.wantedBy = pkgs.lib.mkForce [];
    bluetooth.wantedBy = pkgs.lib.mkForce [];
  };
  
}
