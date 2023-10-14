{ config, pkgs, ... }:
{
  home.packages = [ pkgs.tealdeer ];
  home.file.".config/tealdeer/config.toml".source = ./config.toml;
}
