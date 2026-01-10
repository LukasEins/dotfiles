{ config, pkgs, inputs, ... }:

{


  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -l";
      edit = "sudo -e";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos/";
      fu = "sudo nix flake update --flake /etc/nixos/";
      fetch = "hyfetch";
      fur = "sudo nix flake update --flake /etc/nixos/ && sudo nixos-rebuild switch --flake /etc/nixos/";
    };

    histSize = 10000;
    histFile = "$HOME/.zsh_history";
    setOptions = [
      "HIST_IGNORE_ALL_DUPS"
    ];
  };

}
