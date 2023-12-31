{ config, pkgs, ... }:
{
  fonts.fontconfig.enable = true;
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    btop
    cheat
    curl 
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
    rsync
    wget
  ];

  programs = {
    bat.enable = true;
    broot.enable = true;
    carapace.enable = true;
    dircolors.enable = true;
    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };
    eza = {
      enable = true;
      enableAliases = true;
      extraOptions = [
        "--group-directories-first"
      ];
      git = true;
      icons = true;
    };
    fzf.enable = true;
    mcfly = {
      enable = true;
      fuzzySearchFactor = 2;
      keyScheme = "vim";
    };
    ripgrep.enable = true;
    zoxide.enable = true;
  };
}
