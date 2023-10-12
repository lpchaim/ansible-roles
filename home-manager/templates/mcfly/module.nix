{ config, pkgs, ... }:
{
  programs.mcfly = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
  };
}
