{
  description = "A very basic flake";

  inputs = {
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    polymc.url = "github:PolyMC/PolyMC";
  };

  outputs = { self, nixpkgs,nixpkgs-unstable,... }@inputs:
    let
      system = "x86_64-linux";
    in {
     # nixos - system hostname
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        specialArgs = {
          unstable = import nixpkgs-unstable {
            inherit system;
            config.allowUnfree = true;
            };
        inherit inputs system;
        };
        
        modules = [
          { nixpkgs.overlays = [ inputs.polymc.overlay ];}
          ./nixos/configuration.nix
        ];   
      };  
    };
}
