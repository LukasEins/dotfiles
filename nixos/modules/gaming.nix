{ config, pkgs, inputs, ... }:

{

  programs.steam = {
	enable=true;
	gamescopeSession.enable=true;
  };
  programs.gamemode.enable=true; 
  programs.gamescope={
  	enable=true;
  };


  hardware.graphics={
	enable=true;
	enable32Bit=true;
        extraPackages = with pkgs; [
          mesa.opencl
	  rocmPackages.clr.icd
    ];
  };


  environment.systemPackages = with pkgs; [
 protonup-qt
 lutris
 prismlauncher
 azahar
 pcsx2
 inputs.hytale-launcher.packages.${stdenv.hostPlatform.system}.default
  ];

}
