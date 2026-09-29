{ pkgs, ... }:

{
  imports = [
    ./languages/lang.nix
    ./plugins/plugs.nix
  ];

  programs.nixvim = {
    enable = true;

    defaultEditor = true;
    vimAlias = true;

    colorschemes = {
      moonfly.enable = true;
    };
    clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
    };
    opts = {
      tabstop = 3;
      shiftwidth = 3;
      softtabstop = 3;
      expandtab = true;
      number = true;
      relativenumber = true;
    };

    plugins = {
      telescope.enable = true;
      treesitter.enable = true;
      lualine.enable = true;
      cmp = {
        enable = true;

        settings = {
          sources = [
            { name = "nvim_lsp"; }
            { name = "path"; }
            { name = "buffer"; }
          ];

          mapping = {
            __raw = ''
              cmp.mapping.preset.insert({
                 ['<C-Space>'] = cmp.mapping.complete(),
                 ['<CR>'] = cmp.mapping.confirm({ select = true }),
                 ['<C-e>'] = cmp.mapping.abort(),
                 ['<Tab>'] = cmp.mapping.select_next_item(),
                 ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                 ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                 ['<C-f>'] = cmp.mapping.scroll_docs(4),
              })
            '';
          };
        };
      };
      lsp = {
        enable = true;
      };
      conform-nvim = {
        enable = true;

        settings = {
          format_on_save = {
            lspFallback = true;
          };
        };
      };
      nvim-autopairs.enable = true;
      indent-blankline.enable = true;
      gitsigns.enable = true;
      web-devicons.enable = true;
      toggleterm.enable = true;
    };
  };
  home.packages = with pkgs; [
    tree-sitter
  ];
}
