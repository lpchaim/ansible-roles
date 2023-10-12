
{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    history = {
      extended = false;
      ignoreDups = true;
    };
    initExtra = ''
      if [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then source "$HOME/.nix-profile/etc/profile.d/nix.sh"; fi
      if [ -e "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh" ]; then source "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"; fi
    '';
    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
      plugins = [
        "git"
        "gitfast"
      ];
    };
  };
}
