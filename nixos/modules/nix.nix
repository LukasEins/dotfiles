{ config, pkgs, inputs, ... }:


{

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.settings.auto-optimise-store=true;
  nix.gc={
	automatic=true;
	dates="weekly";
	options="--delete-older-than-10d";
	};



}
