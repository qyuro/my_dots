{ pkgs, ... }:
{
  services.ollama = {
    enable = true;
    loadModels = [
      # "qwen2.5-coder:3b"
      # "nemotron-3-super:cloud"
      # "llama3.2:3b"
      "qwen2.5-coder:7b"
      "qwen2.5-coder:14b"
      # "deepseek-coder:6.7b"
    ];
    environmentVariables = {
      OLLAMA_IGPU_ENABLE = "1";
    };
    syncModels = true;
    package = pkgs.ollama-vulkan;
    # package = pkgs.ollama-rocm;
  };
}
