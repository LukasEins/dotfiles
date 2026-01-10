{ config, pkgs, inputs, ... }:

{


# Global Configuration
programs.neovim = {
  enable = true;
  defaultEditor = true;
  viAlias = true;
  vimAlias = true;
  configure = {
	packages.all.start=with pkgs.vimPlugins;[
	nvim-treesitter.withAllGrammars
	];
  };
 };

}

