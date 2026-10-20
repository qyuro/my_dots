{ pkgs, ... }:
{
  services.ollama = {
    enable = true;
    loadModels = [
      "qwen2.5-coder:7b"
      "qwen2.5-coder:14b"
    ];
    environmentVariables = {
      OLLAMA_IGPU_ENABLE = "1";
    };
    syncModels = true;
    package = pkgs.ollama-vulkan;
  };
}
