{
  description = "NixOS dotfiles";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    niri-flake = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:Sly-Harvey/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = inputs@{ 
    self, 
    nixpkgs, 
    stylix,
    ... 
  }:
    let
      inherit (self) outputs;

      systems = [
        "x86_64-linux"
      ];

      forAllSystems = nixpkgs.lib.genAttrs systems;

      mkHost =
        host:
        nixpkgs.lib.nixosSystem {
          system = forAllSystems (system: system);

          modules = [
            ./hosts/${host}/configuration.nix
            stylix.nixosModules.stylix
          ];

          specialArgs = {
            inherit
              self
              inputs
              outputs
              host
              ;
          };
        };
    in
    {
      nixosConfigurations = {
        vm = mkHost "vm";
      };
    };
}
