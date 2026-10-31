{config,lib,pkgs, ...}:
{
 imports =
 [
   ./pointer.nix
   ./rmpc.nix
   # ./hyprland.nix
   # ./niri.nix
   # ./nixvim/nixvim.nix
   ./obsidian.nix
   ./gtk-icons.nix
   ./git.nix
   # ./zsh.nix
   # ./fish.nix
   ./nushell.nix
 ];
}
