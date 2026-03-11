{pkgs, ...}:
{

  users.defaultUserShell = pkgs.zsh;
  programs.zsh = {
  enable = true;
  enableCompletion = true;
  autosuggestions.enable = true;
  syntaxHighlighting.enable = true;
  ohMyZsh = {
    enable = true;
    plugins = ["git" "sudo"];
    theme = "robbyrussell"; 
    };
  };

}
