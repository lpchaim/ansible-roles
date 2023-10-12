{ config, pkgs, ... }:
{
  home.sessionVariables = {
    EDITOR = "{{ editor }}";
  };

  programs = {
    helix.enable = true;
    kakoune.enable = true;
    neovim.enable = true;
    vim = {
      enable = true;
      defaultEditor = true;
    };
  };
}
