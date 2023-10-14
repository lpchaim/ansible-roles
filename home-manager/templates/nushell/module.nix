{ config, pkgs, ... }:
{
  programs.nushell = {
    enable = true;
    configFile.text = "";
    envFile.text = "";
    extraConfig = (builtins.readFile ./config.nu);
    extraEnv = (builtins.readFile ./env.nu);
  };
}
