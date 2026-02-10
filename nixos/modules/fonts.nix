{ config, pkgs, inputs, ... }:

{

fonts.packages = with pkgs; [
  noto-fonts
  noto-fonts-cjk-sans
  noto-fonts-color-emoji
  nerd-fonts.symbols-only
  liberation_ttf
#add SF Pro Text Medium 11.5 manually
 ];

}
