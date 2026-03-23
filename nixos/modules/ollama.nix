{config,pkgs,...}:
{
  services.ollama = {
    enable = true;
    loadModels = ["qwen2.5-coder:3b" "nemotron-3-super:cloud" "llama3.2:3b" "qwen2.5-coder:7b" "deepseek-coder:6.7b"];
    syncModels = true;
    package = pkgs.ollama-cpu;
  };
}
