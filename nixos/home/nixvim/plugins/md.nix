{
  programs.nixvim = {
    plugins.render-markdown = {
      enable = true;
      settings = {
        enabled = true;
      };
    };
  };
}
