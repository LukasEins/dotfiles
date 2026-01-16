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
 mako
 xdg-desktop-portal-gtk
 xdg-desktop-portal-gnome
 xdg-user-dirs
 (discord.override{withEquicord = true; withOpenASAR = true;})
 (whitesur-icon-theme.override {themeVariants = [ "green" ]; })
 (reversal-icon-theme.override {colorVariants = [ "-green" ]; })
 (colloid-icon-theme.override {colorVariants = [ "green" ]; })
 file-roller
 nwg-look
 gedit
 btop
 davinci-resolve
 ncdu
 calibre
 qbittorrent
 p7zip-rar
 ani-cli
 kitty
 ntfs3g
 ascii-image-converter
 rose-pine-cursor
 inputs.noctalia.packages.${stdenv.hostPlatform.system}.default 
 #notion-app
 #lxmenu-data
 #shared-mime-info
  ]; 

}
