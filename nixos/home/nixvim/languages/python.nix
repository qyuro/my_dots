{pkgs,...}:

{
   programs.nixvim = {
      plugins.lsp.servers.basedpyright.enable = true;
      plugins.conform-nvim = {
         settings = {
            formatters_by_ft = {
               python = ["ruff_format"];
            };
            formatters = {
               ruff_format = {
                  command = "${pkgs.ruff}/bin/ruff";
                  args = [ "format" "-"];
                  stdin = true;
               };
            };
         };
      };
   };
   home.packages = with pkgs; [
      basedpyright
      ruff
   ];
}
