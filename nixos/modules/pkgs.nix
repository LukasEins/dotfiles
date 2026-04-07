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
 glib
 file-roller
 nwg-look
 gedit
 vscode
 btop
 pkgs.davinci-resolve
 ncdu
 #calibre
 qbittorrent
 p7zip
 ani-cli
 ntfs3g
 mpv
 ffmpeg
 wtype
 filezilla
 protontricks
 equibop
 discord
 audacity
 #cloudflare-warp
 mpvpaper
 gpu-screen-recorder
 nvtopPackages.amd
 kdePackages.qttools
 nicotine-plus
 strawberry
 yt-dlp
 proton-vpn
 gparted
 makemkv
 asunder
 mangayomi
 easyeffects
 foliate
 zathura
 pywalfox-native
 inputs.noctalia.packages.${stdenv.hostPlatform.system}.default 
  ]; 

}
