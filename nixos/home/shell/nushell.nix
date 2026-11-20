{ pkgs, ... }:

{
  programs.nushell = {
    enable = true;

    # Используем settings для безопасного слияния настроек
    settings = {
      show_banner = false; # Убирает приветствие

      completions = {
        case_sensitive = false;
        quick = true;
        partial = true;
        algorithm = "fuzzy";
        external = {
          enable = true;
          max_results = 100;
        };
      };
    };
  };

  # Включаем Carapace для продвинутого автодополнения
  programs.carapace = {
    enable = true;
    enableNushellIntegration = true;
  };
}
