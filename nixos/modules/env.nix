{ config, pkgs, inputs, ... }:

{
  environment.variables = {
    RUSTICL_ENABLE = "radeonsi";
    XCURSOR_SIZE = "26";
    XCURSOR_THEME = "BreezeX-RosePine-Linux";
  };

  environment.sessionVariables={
#GSETTINGS_SCHEMA_DIR = "${pkgs.gsettings-desktop-schemas}/share/gsettings-schemas/${pkgs.gsettings-desktop-schemas.name}/glib-2.0/schemas";

QT_QPA_PLATFORMTHEME = "gtk3";
  };

}
