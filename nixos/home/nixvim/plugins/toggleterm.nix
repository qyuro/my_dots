{
  programs.nixvim.plugins.toggleterm = {
    enable = true;
    settings = {
      open_mapping = "[[<leader>\\]]";
      direction = "float";
      options = {
        silent = true;
        desc = "Open terminal toggle";
      };
    };
  };
}
