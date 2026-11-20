{pkgs,...}:
{
  programs.obsidian = {
    enable = true;
    cli.enable = true;
    package = pkgs.obsidian;
    
    defaultSettings.corePlugins = [
      "backlink"
      "bookmarks"
      "canvas"
      "command-palette"
      "file-explorer"
      "global-search"
      "graph"
      "outgoing-link"
      "outline"
      "page-preview"
      "properties"
      "tag-pane"
      "templates"      
    ];   
  };
}
