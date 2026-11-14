{
  programs.nixvim.plugins = {
    typst-preview = {
      enable = true;
    };
    lsp.servers.tinymist = {
      enable = true;
    };
  };
}
