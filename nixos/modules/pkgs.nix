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
 (discord.override{withEquicord = true;})
 mako
 xdg-desktop-portal-gtk
 xdg-desktop-portal-gnome
 xdg-user-dirs
 (whitesur-icon-theme.override {themeVariants = [ "green" ]; })
 file-roller
 nwg-look
 gedit
 reversal-icon-theme
 btop
 davinci-resolve
 ncdu
 obsidian
 calibre
 qbittorrent
 p7zip-rar
 ani-cli
 ghostty
 ntfs3g
 ascii-image-converter
 rose-pine-cursor
 inputs.noctalia.packages.${stdenv.hostPlatform.system}.default 
 #notion-app
 #lxmenu-data
 #shared-mime-info
  ]; 

}
