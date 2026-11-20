{
  services.i2pd = {
    enable = true;

    settings = {
      port = 23145;

      "httpproxy".address = "127.0.0.1";
      "httpproxy.port" = 4444;

      "socksproxy.address" = "127.0.0.1";
      "socksproxy.port" = 4447;

      "http".enabled = true;
      "http".address = "127.0.0.1";
      "http".port = 7070;

      bandwidth = "2048KBps";
      "limits.transittunnels" = 10000;
      # "limits.transittunnels" = 1048576;
      sam.enabled = true;

      upnp.enabled = true;
    };
  };
}
