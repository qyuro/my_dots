{config,lib,pkgs, ...}:
{
 imports =
 [
   ./pointer.nix
   ./rmpc.nix
   ./hyprland.nix
   ./nixvim/nixvim.nix
   ./obsidian.nix
   ./gtk-icons.nix
   ./git.nix
 ];
}
