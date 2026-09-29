{pkgs,...}:
{
   programs.nixvim = {
      plugins.lsp.servers.nixd.enable = true;

      plugins.conform-nvim.settings = {
         formatters_by_ft = {
            nix = ["nixfmt"];
         };
         formatters = {
            nixfmt = {
               command = "${pkgs.nixfmt}/bin/nixfmt";
               stdin = true;
            }; 
         };
      };
   };
   home.packages = with pkgs; [
      nixd
      nixfmt
   ];
}
