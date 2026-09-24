{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "qyuro";
        email = "ur.qyuro@gmail.com";
      };
      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;
    };
  };
}

