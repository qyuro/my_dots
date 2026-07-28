{
  services.udisks2 = {
    enable = true;
    mountOnMedia = true;
  };
  ### нужно для монтирования вроде как 
  services.gvfs.enable = true;
}
