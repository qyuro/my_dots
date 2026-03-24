{
  description = "A very basic flake";

  inputs = {
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    polymc.url = "github:PolyMC/PolyMC";
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs,nixpkgs-unstable,polymc,nur,... }@inputs:
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
        nur = import nur {
          nurpkgs = nixpkgs;
          inherit system;
          };
        };
        
        modules = [
          {
          nixpkgs.overlays = [
              polymc.overlay
              nur.overlays.default
            ];
          }
          ./nixos/configuration.nix
        ];   
      };  
    };
}
