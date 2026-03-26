{config,lib,pkgs, ...} :
{
 imports = [
   ./boot.nix
   ./amd.nix
   ./resolved.nix
   ./kernel.nix
   ./network.nix
   ./timezone.nix
   ./gamemode.nix
   ./opentablet.nix
   ./steam.nix
   ./locale.nix
   ./for_x.nix
   ./pipewire.nix
   ./git.nix
   ./qemu.nix
   ./zsh.nix
   ./niri.nix
   ./throne.nix
   # ./zapret.nix
   ./packages.nix
   ./firefox.nix
   ./lact.nix
   ./tuned.nix
   # ./power-profiles-daemon.nix
   ./user.nix
   ./gnome.nix
   ./displaymanager.nix
   ./bluetooth.nix
   ./ollama.nix
   ./services.nix
   ./tor.nix
 ];
}
