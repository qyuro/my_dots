{
  programs.nixvim = {
    plugins.render-markdown = {
      enable = true;
      settings = {
        enabled = true;
      };
    };
    plugins.markdown-preview = {
      enable = true;
      settings = {
        auto_start = 1;
        auto_cloese = 1;
      };
    };
  };
}
