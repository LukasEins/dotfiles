{ config, pkgs, inputs, ... }:

{


  environment.variables = {
    RUSTICL_ENABLE = "radeonsi";
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";



}
