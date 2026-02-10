{ config, pkgs, inputs, ... }:

{

  networking.hostName = "Yuki"; # Define your hostname.

/*  networking.nameservers = [
    "1.1.1.1"
    "1.0.0.1"
  ];

    services.resolved = {
    enable = true;
    settings.Resolve={
    DNSSEC = "true";
    Domains =  "~.";
    FallbackDns = [
      "1.1.1.1"
      "1.0.0.1"
    ];
    DNSOverTLS = "true";
  };
};*/
  services.resolved.enable=true;
  services.cloudflare-warp.enable=true;

  networking.networkmanager.wifi.powersave = false;
  networking.networkmanager.enable = true;
  networking.firewall.enable = true;
}
