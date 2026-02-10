{ config, pkgs, inputs, ... }:

{
  security.polkit.enable=true;
  security.rtkit.enable = true;
  services.tumbler.enable = true;
  services.gvfs.enable=true;
  services.fstrim.enable=true;
  services.gnome.gnome-keyring.enable = true;
  services.udisks2.enable = true;
  #services.mullvad-vpn.package = pkgs.mullvad-vpn;
}
