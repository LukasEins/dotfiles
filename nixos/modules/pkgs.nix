{ config, pkgs, inputs, ... }:

{

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
 vim
 wget
 git   
 fastfetch
 alacritty
 eog 
 adw-gtk3
 xwayland-satellite
 fuzzel
 matugen
 equicord
 discord
 mako
 xdg-desktop-portal-gtk
 xdg-desktop-portal-gnome
 xdg-user-dirs
 lxmenu-data
 shared-mime-info
 papirus-icon-theme
 papirus-folders
 file-roller
 nwg-look
 hyfetch
 gedit
 reversal-icon-theme
 btop
 davinci-resolve
 inputs.noctalia.packages.${stdenv.hostPlatform.system}.default 
  ]; 

}
