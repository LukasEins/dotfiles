{ config, pkgs, inputs, ... }:

{
  programs.firefox={
	enable=true;
	package = pkgs.firefox-bin;
	nativeMessagingHosts.packages = [pkgs.pywalfox-native];
  };
  programs.seahorse.enable=true;
  programs.kdeconnect.enable=true;
  programs.dconf.enable=true;
  programs.niri.enable=true;
  programs.thunar.enable=true;
  programs.xfconf.enable = true;
  programs.thunar.plugins = with pkgs; [
  thunar-archive-plugin # Requires an Archive manager like file-roller, ark, etc
  thunar-volman
  thunar-shares-plugin
  thunar-media-tags-plugin
  ];
programs.xwayland.enable=true;
xdg.portal = {
  enable = true;
  config.niri = {
    default = [ "gnome" "gtk" ];
    "org.freedesktop.impl.portal.FileChooser" = [ "gtk" ]; # Force GTK for files
  };
};
}
