{ config, pkgs, inputs, ... }:

{

  services.pipewire = {
    enable = true; 
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
    wireplumber.enable=true;
  };

  services.pipewire.extraConfig.pipewire."92-low-latency" = {
    "context.properties" = {
      "default.clock.rate" = 48000;
      "default.clock.min-quantum" = 1024;
    };
  };

  services.pipewire.wireplumber.extraConfig."99-disable-suspend" = {
    "monitor.alsa.rules" = [
      {
        matches = [
          {
            "node.name" = "~alsa_input.*";
          }
          {
            "node.name" = "~alsa_output.*";
          }
        ];
        actions = {
          update-props = {
            "session.suspend-timeout-seconds" = 0;
          };
        };
      }
    ];
  };

  environment.systemPackages = with pkgs; [
 pavucontrol  
  ];

}
