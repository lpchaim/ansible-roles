{ config, pkgs, ... }:
{
  programs = {
    git = {
      delta.enable = true;
      userEmail = "{{ git_email }}";
      userName = "{{ git_name }}";
    };
    lazygit.enable = true;
  };
}
