{ config, pkgs, ... }:
{
  programs.starship = {
    enable = true;
    settings = {
      aws = {
        disabled = true;
      };
    };
  };
}
