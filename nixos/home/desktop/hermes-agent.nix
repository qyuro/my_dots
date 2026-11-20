{
  programs.hermes-agent.enable = true;
  services.hermes-agent = {
    enable = true;
    gateway.enable = true;
    settings = {
      model = {
        provider = "custom";
        default = "Qwen3.8-9B-Distill-uncensored-heretic.Q4_K_M.gguf";
        base_url = "http://127.0.0.1:8080/v1";
        context_length = 65536;
      };
    };
  };
}
