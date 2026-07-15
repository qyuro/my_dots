{
  programs.sway= {
    enable = true;
    wrapperFeatures = {
      gtk = true;
      base = true;
    };
    extraPackages = [
      
    ];
    xwayland.enable = true;
  }; 
}
