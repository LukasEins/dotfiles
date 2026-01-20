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
 (discord.override{withEquicord = true; withOpenASAR = false;})
 rose-pine-cursor
 matugen
 adw-gtk3
 file-roller
 nwg-look
 gedit
 vscode
 btop
 kdePackages.kdenlive
 ncdu
 calibre
 qbittorrent
 p7zip-rar
 ani-cli
 ntfs3g
 mpv
 pywalfox-native
 wtype
 youtube-tui
 inputs.noctalia.packages.${stdenv.hostPlatform.system}.default 
  ]; 

}
