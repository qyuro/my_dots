{ pkgs, ... }:

{
  programs.nixvim = {
    plugins.lsp.servers.clangd.enable = true;
    plugins.conform-nvim.settings = {
      formatters_by_ft = {
        c = [ "clang-format" ];
        cpp = [ "clang-format" ];
      };
      formatters = {
        clang-format = {
          command = "${pkgs.clang-tools}/bin/clang-format";
          stdin = true;
        };
      };
    };
  };
  home.packages = with pkgs; [
    clang
    clang-tools
  ];
}
