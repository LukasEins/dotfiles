{
	description="Nixos config with noctalia";

	inputs={
		nixpkgs.url="github:nixos/nixpkgs/nixos-unstable";

		quickshell={
			url="github:outfoxxed/quickshell";
			inputs.nixpkgs.follows="nixpkgs";
		};
		noctalia={
			url="github:noctalia-dev/noctalia-shell";
			inputs.nixpkgs.follows="nixpkgs";
		#	inputs.quickshell.follows="quickshell";
		};
	};


	outputs=inputs@{ self, nixpkgs, ... }: {

	nixosConfigurations.nixos=nixpkgs.lib.nixosSystem{
	specialArgs={ inherit inputs; };		
modules=[
		./configuration.nix
		
		];
	};
};

}
