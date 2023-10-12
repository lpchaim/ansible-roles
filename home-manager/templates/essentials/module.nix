{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    btop
    cheat
    du-dust
    duf
    fd
    htop
    (nerdfonts.override {
      fonts = [
        "FiraCode"
        "JetBrainsMono"
        "Overpass"
        "SourceCodePro"
      ];
    })
  ];

  programs = {
    bat.enable = true;
    broot.enable = true;
    dircolors = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
    };
    ripgrep.enable = true;
  };
}
