{pkgs,...}:
{
   programs.nixvim = {
      plugins.lsp.servers.gopls = {
         enable = true;

         settings = {
            gopls = {
               analyses = {
                  unusedparams = true;
                  shadow = true;
               };
               staticcheck = true;
               gofumpt = true;
               completeUnimported = true;
               usePlaceholders = true;
            };
         };
      };
      plugins.conform-nvim = {
         settings = {
            formatters_by_ft = {
               go = ["gosimports"];
            };
            formatters = {
               gosimports = {
                  command = "${pkgs.gosimports}/bin/gosimports";
                  stdin = true;
               };
            };
         }; 
      };
   };
   home.packages = with pkgs; [
      gosimports
      go-tools
   ];
}

