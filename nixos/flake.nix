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
            nixpkgs.overlays = [ nix-cachyos-kernel.overlays.pinned ];
            boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-bore;
            # Binary cache
            nix.settings.substituters = [ "https://attic.xuyh0120.win/lantian" ];
            nix.settings.trusted-public-keys = [ "lantian:EeAUQ+W+6r7EtwnmYjeVwx5kOGEBpjlBfPlzGlTNvHc=" ];

            
          }
        )	
      ];
    };
  };
}
