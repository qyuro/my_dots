{
  description = "A very basic flake";

  inputs = {
    # Основной nixpkgs — unstable
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # Stable — для пакетов, которые сломаны или нестабильны в unstable
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-26.05";

    # Отдельная ревизия для Bitwig
    bitwig.url = "github:NixOS/nixpkgs/655e3354167d63919a7f376897aa762d45d595e9";

    polymc = {
      url = "github:PolyMC/PolyMC";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zapret-discord-youtube = {
      url = "github:kartavkun/zapret-discord-youtube";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-craftapps = {
      url = "github:olafkfreund/nix-craftapps";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    amane = {
      url = "github:MystiaFin/amane";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    tg-ws-proxy = {
      url = "github:pialtor/tg-ws-proxy-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    lecoo-control-center = {
      url = "path:/home/hxteher/git_downloads/Lecoo-Control-Center";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    horizon = {
      url = "github:horizon-rust/horizon";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    neu-nix = {
      url = "github:ricardomaps/neu-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hermes-agent = {
      url = "github:NousResearch/hermes-agent";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # tele.url = "github:sorokin-vladimir/tele";

    noctalia = {
      url = "github:noctalia-dev/noctalia";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # fetch.url = "github:areofyl/fetch";
    # helix = {
    #   url = "github:helix-editor/helix";
    # inputs.nixpkgs.follows = "nixpkgs";
    # };
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-stable,
      home-manager,
      nixvim,
      polymc,
      bitwig,
      neu-nix,
      # fetch,
      zapret-discord-youtube,
      nix-craftapps,
      tg-ws-proxy,
      lecoo-control-center,
      hermes-agent,
      nur,
      horizon,
      ...
    }@inputs:

    let
      system = "x86_64-linux";

      # Stable nixpkgs
      stable = import nixpkgs-stable {
        inherit system;
        config.allowUnfree = true;
      };

      # Отдельный nixpkgs для Bitwig
      bitwig-pkgs = import bitwig {
        inherit system;
        config.allowUnfree = true;
      };

    in
    {
      # TG WS PROXY
      packages.${system}.tg-ws-proxy = tg-ws-proxy.packages.${system}.default;

      apps.${system}.tg-ws-proxy = tg-ws-proxy.apps.${system}.default;

      # NixOS
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = {
          inherit
            inputs
            system
            stable
            bitwig-pkgs
            ;

          neu = neu-nix;

          nur = import nur {
            nurpkgs = nixpkgs.legacyPackages.${system};
            inherit system;
          };
        };

        modules = [
          {
            nixpkgs.config.allowUnfree = true;

            nixpkgs.overlays = [
              # horizon.overlays.default
              polymc.overlay
              nur.overlays.default
              neu-nix.overlays.default
            ];
          }

          horizon.nixosModules.default
          nix-craftapps.nixosModules.default
          zapret-discord-youtube.nixosModules.withTestTools
          lecoo-control-center.nixosModules.default

          ./nixos/configuration.nix
        ];
      };

      # Home Manager
      homeConfigurations.hxteher = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};

        extraSpecialArgs = {
          inherit
            inputs
            stable
            ;
        };

        modules = [
          ./nixos/home.nix
          nixvim.homeModules.nixvim
          hermes-agent.homeManagerModules.default
        ];
      };
    };
}
