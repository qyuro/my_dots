{
  environment.variables = {
    NH_FLAKE="/home/hxteher/my_dots";
    NH_OS_FLAKE = "/home/hxteher/my_dots";
    NIXOS_OZONE_WL = "1";
    MOZ_ENABLE_WAYLAND = "1";
    GDK_BACKEND = "wayland,x11";
    ELECTRON_OZONE_PLATFORM = "auto";
    SDL_VIDEODRIVER = "wayland,x11";
    # RUSTUP_HOME = "$HOME/.rustup"
    # CARGO_HOME = "$HOME/.cargo"
  };
}
