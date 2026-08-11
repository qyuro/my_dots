{
  description = "A very basic flake";

  inputs = {
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-old.url = "github:Nixos/nixpkgs/nixos-25.11";
    polymc={
      url = "github:PolyMC/PolyMC";
      inputs.nixpkgs.follows = "nixpkgs-old";
    };
    # fenix={
      # url = "github:nix-community/fenix";
      # inputs.nixpkgs.follows = "nixpkgs";
    # };
    # nur = {
      # url = "github:nix-community/NUR";
      # inputs.nixpkgs.follows = "nixpkgs";
    # };
    # neu-nix = {
      # url = "github:ricardomaps/neu-nix";
      # inputs.nixpkgs.follows="nixpkgs";
    # };
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      # url = "github:nix-community/nixvim";
      url = "github:nix-community/nixvim/nixos-26.05";
      # inputs.nixpkgs.follows = "nixpkgs";
    };
    # vm-curator.url = "github:mroboff/vm-curator";
    # hyprland.url = "github:hyprwm/Hyprland";
    # hyprland-plugins = {
      # url = "github:hyprwm/hyprland-plugins";
      # inputs.hyprland.follows = "hyprland";
    # };
    noctalia = {
      url = "github:noctalia-dev/noctalia";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
  };

  outputs = { self, nixpkgs,nixpkgs-unstable,home-manager,nixvim,polymc,noctalia, ... }@inputs:
    let
      system = "x86_64-linux";

      unstable = import nixpkgs-unstable {
        inherit system;
        config.allowUnfree = true;
      };
      # rustToolchain = fenix.packages.${system}.stable.toolchain;
    in {
     # nixos - system hostname
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        specialArgs = {
          # unstable = import nixpkgs-unstable {
            # inherit system;
            # config.allowUnfree = true;
            # };
        inherit unstable inputs system;
        #TEST
        # neu = neu-nix;
        # nur = import nur {
          # nurpkgs = nixpkgs;
          # inherit system;
          # };
        };
        
        modules = [
          {
          nixpkgs.overlays = [
              polymc.overlay
              # nur.overlays.default
              # neu-nix.overlays.default
            ];
          }
          ./nixos/configuration.nix
        ];   
      };
      homeConfigurations.hxteher= home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        extraSpecialArgs = {
          inherit unstable inputs;

          # unstable = import nixpkgs-unstable {
            # inherit system;
            # config.allowUnfree = true;
          # };
        };
        
        modules = [
          ./nixos/home.nix
          nixvim.homeModules.nixvim
        ];
      };
    };
}
