{ config, pkgs, inputs, ... }:

{

  services.getty.autologinUser = "lukas";
  

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.lukas = {
    shell = pkgs.zsh;
    isNormalUser = true;
    description = "lukas";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };


}
