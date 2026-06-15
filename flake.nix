{
  description = "A very basic flake";

  inputs = {
    # nixpkgs-old = {
      # url = "github.NixOS/nixpkgs/nixos-25.11";
      # inputs.nixpkgs.follows = "nixpkgs";
    # };
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    polymc.url = "github:PolyMC/PolyMC";
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    neu-nix = {
      url = "github:ricardomaps/neu-nix";
      inputs.nixpkgs.follows="nixpkgs";
    };
  };

  outputs = { self, nixpkgs,nixpkgs-unstable,polymc,nur,neu-nix,... }@inputs:
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
        #TEST
        neu = neu-nix;
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
              neu-nix.overlays.default
            ];
          }
          ./nixos/configuration.nix
        ];   
      };  
    };
}
