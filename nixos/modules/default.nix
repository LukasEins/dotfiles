{ config, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan. 
      ./audio.nix
      ./boot.nix
      ./env.nix
      ./gaming.nix
      ./locale.nix
      ./network.nix
      ./nix.nix
      ./nvim.nix
      ./obs.nix
      ./pkgs.nix
      ./programs.nix
      ./services.nix
      ./shell.nix
      ./syncthing.nix
      ./users.nix
    ];
}
