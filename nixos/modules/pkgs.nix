{ config, pkgs, inputs, ... }:

{

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
 rose-pine-cursor
 adw-gtk3
 adwaita-icon-theme
 gsettings-desktop-schemas
 file-roller
 nwg-look
 gedit
 vscode
 btop
 pkgs.davinci-resolve
 ncdu
 calibre
 qbittorrent
 p7zip-rar
 ani-cli
 ntfs3g
 mpv
 ffmpeg
 pywalfox-native
 wtype
 (discord-canary.override{withEquicord=true;})
 inputs.noctalia.packages.${stdenv.hostPlatform.system}.default 
  ]; 

}
