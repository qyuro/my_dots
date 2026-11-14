{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    keymaps = [
      {
        key = "<leader>.";
        mode = "n";
        action = ":Ex<CR>";
        options = {
          silent = true;
          desc = "Open File explorer";
        };
      }
      {
        key = "<leader>/";
        mode = "n";
        action = "<cmd>nohlsearch<CR><Esc>";
        options = {
          silent = true;
          desc = "Clear search highlight";
        };
      }
      # {
      #   key = "<leader>t";
      #   mode = "n";
      #   action = "<cmd>ToggleTerm<CR>";
      #   options = {
      #     silent = true;
      #     desc = "Toggle terminal";
      #   };
      # }
    ];
  };
}
