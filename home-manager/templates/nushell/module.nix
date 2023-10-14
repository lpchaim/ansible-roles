{ config, pkgs, ... }:
{
  programs.nushell = {
    enable = true;
    extraConfig = (builtins.readFile ./config.nu);
    extraEnv = (builtins.readFile ./env.nu);
  };
}
