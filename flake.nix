{
  description = "A very basic flake";

  inputs = {
    #nixpkgs — unstable
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    # Stable — для пакетов, которые сломаны или нестабильны в unstable
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    # Отдельная ревизия для Bitwig
    bitwig.url = "github:Nixos/nixpkgs/02f5696b0e6097e589076d886b317b83ff0437d7";
    # bitwig.url = "github:NixOS/nixpkgs/3633f4ab859cd646d244802286d916f107ffeda7";
    # bitwig.url = "github:Nixos/nixpkgs/767b0d3ec98a143ad9ed7dfc0d5553510ac27133";

    nxv.url = "github:utensils/nxv";

    # kineticwe = {
    # url = "gitlab:theblackdon/kineticwe";
    # inputs.nixpkgs.follows = "nixpkgs";
    # };

    hyprland = {
      url = "github:hyprwm/Hyprland/v0.55.4";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # hyprexpo = {
    # url = "github:sandwichfarm/hyprexpo";
    # inputs.nixpkgs.follows = "nixpkgs";
    # inputs.hyprland.follows = "hyprland"; # критично
    # };
    hy3 = {
      url = "github:outfoxxed/hy3?ref=hl0.55.0";
      inputs.hyprland.follows = "hyprland";
    };

    nix-cachyos-kernel.url = "github:xddxdd/nix-cachyos-kernel/release";

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
      # inputs.nixpkgs.follows = "nixpkgs";
    };
    tg-ws-proxy = {
      url = "github:pialtor/tg-ws-proxy-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    lecoo-control-center = {
      url = "path:/home/hxteher/git_downloads/Lecoo-Control-Center";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # horizon = {
    # url = "github:horizon-rust/horizon";
    # inputs.nixpkgs.follows = "nixpkgs";
    # };
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    neu-nix = {
      url = "github:ricardomaps/neu-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      # inputs.nixpkgs.follows = "nixpkgs";
    };

    hermes-agent = {
      url = "github:NousResearch/hermes-agent";
      # inputs.nixpkgs.follows = "nixpkgs";
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
      nixpkgs-unstable,
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
      # horizon,
      # kineticwe,
      nix-cachyos-kernel,
      nxv,
      # hyprexpo,
      ...
    }@inputs:

    let
      system = "x86_64-linux";

      stable = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };

      # unstable nixpkgs
      unstable = import nixpkgs-unstable {
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
            unstable
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
              # hyprexpo.overlays.default
              nix-cachyos-kernel.overlays.pinned
              nxv.overlays.default
            ];
          }

          # horizon.nixosModules.default
          nix-craftapps.nixosModules.default
          zapret-discord-youtube.nixosModules.withTestTools
          lecoo-control-center.nixosModules.default
          # kineticwe.nixosModules.default
          ./nixos/configuration.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.sharedModules = [
              nixvim.homeModules.nixvim
              hermes-agent.homeManagerModules.default
            ];

            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.extraSpecialArgs = {
              inherit
                inputs
                stable
                unstable
                system
                ;
            };

            home-manager.users.hxteher = import ./nixos/home.nix;
          }
        ];
      };

      #   # Home Manager
      # homeConfigurations.hxteher = home-manager.lib.homeManagerConfiguration {
      #     pkgs = nixpkgs.legacyPackages.${system};
      #
      #     extraSpecialArgs = {
      #       inherit
      #         inputs
      #         stable
      #         ;
      #     };
      #
      #     modules = [
      #       ./nixos/home.nix
      #       nixvim.homeModules.nixvim
      #       hermes-agent.homeManagerModules.default
      #     ];
      #   };
    };
}
