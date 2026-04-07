{
  description = "Lukas NixOS setup";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    hytale-launcher.url = "github:JPyke3/hytale-launcher-nix";

    nix-cachyos-kernel.url = "github:xddxdd/nix-cachyos-kernel/release";

    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, hytale-launcher, ... } @ inputs: {
    nixosConfigurations.Yuki = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      specialArgs = { inherit inputs; };

      modules = [
        ./configuration.nix
      ];
    };
  };
}
