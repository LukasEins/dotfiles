{
	description="Lukas NixOS setup";

	inputs={
		nixpkgs.url="github:nixos/nixpkgs/nixos-unstable";

		nix-cachyos-kernel.url="github:xddxdd/nix-cachyos-kernel/release";

		quickshell={
			url="github:outfoxxed/quickshell";
			inputs.nixpkgs.follows="nixpkgs";
		};

		noctalia={
			url="github:noctalia-dev/noctalia-shell";
			inputs.nixpkgs.follows="nixpkgs";
		};

	};


	outputs=inputs@{ self, nixpkgs, nix-cachyos-kernel, ... }: {
		nixosConfigurations.nixos=nixpkgs.lib.nixosSystem {

	specialArgs={ inherit inputs; };

	modules = [
	./configuration.nix
	  (
	  { pkgs, ... }:
	  {
	   nixpkgs.overlays = [
              # Build the kernels on top of nixpkgs version in your flake.
              # Binary cache may be unavailable for the kernel/nixpkgs version combos.
              nix-cachyos-kernel.overlays.default
		
		];
		}
		)
		];
	};
};

}
