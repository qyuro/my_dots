{ pkgs, ... }:

{
  programs.nixvim = {
    enable = true;

    defaultEditor = true;
    vimAlias = true;

    colorschemes = {
      gruvbox-material-nvim.enable = true;
    };

    opts = {
      number = true;
      relativenumber = true;
    };

    plugins = {
      telescope.enable = true;
      treesitter.enable = true;
      lualine.enable = true;
      cmp.enable = true;
      lsp = {
        enable = true;
        servers.gopls = {
          enable = true;

          settings = {
            gopls = {
              analyses = {
                unusedparams = true;
                shadow = true;
              };
              staticcheck = true;
              gofumpt = true;
              usePlaceholders = true;
              completeUniported = true;
            };
          };
        };
      };
      conform-nvim = {
        enable = true;

        settings = {
          formatters_by_ft = {
            gp = ["goimport"];
          };
          format_on_save = {
            lspFallback = true;
          };
        };
      };
      # dap.enable = true;
      # dap-ui.enable = true;
      nvim-autopairs.enable = true;
      indent-blankline.enable = true;
      gitsigns.enable = true;
      web-devicons.enable = true;
      toggleterm.enable = true;
    };
  };
  home.packages = with pkgs; [
    gopls
    go
    go-tools
    tree-sitter
  ];
}
