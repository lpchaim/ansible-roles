args@{ config, pkgs, ... }:
with pkgs.lib;
let
  settings = import ./settings.nix;
  util = import ./util.nix args;
in {
  programs.starship = {
    enable = true;
    settings = let 
      tomlContents = util.getPresetFiles [ "nerd-font-symbols" ];
      allSettings = (map (fromTOML) tomlContents) ++ [settings];
      mergedSettings = builtins.foldl' (l: r: pkgs.lib.recursiveUpdate l r) {} allSettings;
    in mergedSettings;
  };
}
