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
          mesa.opencl # Enables Rusticl (OpenCL) support
    ];
  };


  environment.systemPackages = with pkgs; [
 protonup-qt
 lutris
 prismlauncher
 inputs.hytale-launcher.packages.${stdenv.hostPlatform.system}.default
  ];

}
