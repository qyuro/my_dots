{
  programs.nixvim.plugins.obsidian = {
    enable = true;
    settings = {
      legacy_commands = false;
      workspaces = [
        {
          name = "Obsidian Vault";
          path = "~/Obsidian Vault/";
        }
      ];
    };
  };
}
