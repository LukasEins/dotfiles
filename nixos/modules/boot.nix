{ config, pkgs, inputs, ... }:

{

  # Bootloader
  #boot.loader.grub.enable = true;
  #boot.loader.grub.device = "/dev/sda";
  #boot.loader.grub.useOSProber = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 10;

  boot.kernelParams = [
    "zswap.enabled=1" # enables zswap
    "zswap.compressor=lz4" # compression algorithm
    "zswap.max_pool_percent=20" # maximum percentage of RAM that zswap is allowed to use
    "zswap.shrinker_enabled=1" # whether to shrink the pool proactively on high memory pressure
  ];

hardware.cpu.amd.updateMicrocode=true;
hardware.bluetooth.enable=true;

services.displayManager.sddm = {
  enable = true;
  wayland.enable = true;
    theme = "catppuccin-mocha-mauve";
  };

  environment.systemPackages = [ 
    (pkgs.catppuccin-sddm.override {
      flavor = "mocha";
      accent = "mauve";
    })
  ];
}

