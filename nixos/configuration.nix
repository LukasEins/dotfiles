{ config, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  boot.kernelPackages=pkgs.linuxPackages_zen;

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;
#	boot.loader.systemd-boot.enable = true;
#	boot.loader.efi.canTouchEfiVariables = true;


  networking.hostName = "nixos"; # Define your hostname.
 # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  services.getty.autologinUser = "lukas";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.lukas = {
    isNormalUser = true;
    description = "lukas";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  programs.firefox.enable=true;
  programs.niri.enable=true;
  security.polkit.enable=true;   
  programs.steam= {
	enable=true;	
	gamescopeSession.enable=true;
  };
  programs.gamemode.enable=true; 
  programs.gamescope={
  	enable=true;
  };
  services.gvfs.enable=true;
  services.fstrim.enable=true;
  # List packages installed in system profile. To search, run:

  # $ nix search wget
  environment.systemPackages = with pkgs; [
 vim
 wget
 git   
 fastfetch
 alacritty
 xwayland-satellite
 fuzzel
 vscode
 protonup-qt
 lutris
 heroic
 discord-canary
 mako
 xdg-desktop-portal-gtk
 xdg-desktop-portal-gnome
 gnome-keyring
 xdg-user-dirs
 pcmanfm
 lxmenu-data
 shared-mime-info
 inputs.noctalia.packages.${stdenv.hostPlatform.system}.default 
  ];


  nix.gc={
	automatic=true;
	dates="weekly";
	options="--delete-older-than-10d";

 };

  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # services.openssh.enable = true;

  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  networking.firewall.enable = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nix.settings.auto-optimise-store=true;
  hardware.graphics.enable=true;


  system.stateVersion = "25.11"; 

}
