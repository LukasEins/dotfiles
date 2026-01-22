{ config, pkgs, inputs, ... }:

{

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.lukas = {
    shell = pkgs.zsh;
    isNormalUser = true;
    description = "lukas";
    extraGroups = [ "networkmanager" "wheel" "video" "render" ];
    packages = with pkgs; [];
  };


}
