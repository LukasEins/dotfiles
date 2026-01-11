{ config, pkgs, inputs, ... }:

{

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
 wget
 git   
 fastfetch
 alacritty
 eog 
 adw-gtk3
 xwayland-satellite
 fuzzel
 matugen
 (discord.override {
  # withOpenASAR = true; # can do this here too
    withEquicord = true;
 })
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
 ncdu
 notion-app
 obsidian
 calibre
 qbittorrent
 p7zip-rar
 ani-cli
 ghostty
 inputs.noctalia.packages.${stdenv.hostPlatform.system}.default 
  ]; 

}
