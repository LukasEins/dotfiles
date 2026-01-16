{ config, pkgs, inputs, ... }:

{

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
 wget
 git
 fastfetch
 alacritty
 kitty
 eog 
 xwayland-satellite
 fuzzel
 mako
 xdg-desktop-portal-gtk
 xdg-desktop-portal-gnome
 xdg-user-dirs
 (discord.override{withEquicord = true; withOpenASAR = true;})
 (whitesur-icon-theme.override {themeVariants = [ "green" ]; })
 (reversal-icon-theme.override {colorVariants = [ "-green" ]; })
 (colloid-icon-theme.override {colorVariants = [ "green" ]; })
 rose-pine-cursor
 matugen
 adw-gtk3
 file-roller
 nwg-look
 gedit
 vscode
 btop
 davinci-resolve
 ncdu
 calibre
 qbittorrent
 p7zip-rar
 ani-cli
 ntfs3g
 ascii-image-converter
 mpv
 oh-my-zsh
 inputs.noctalia.packages.${stdenv.hostPlatform.system}.default 
 #notion-app
 #lxmenu-data
 #shared-mime-info
  ]; 

}
