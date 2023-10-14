{ config, pkgs, ... }:
{
  programs = {
    helix = {
      enable = true;
      settings = {
        theme = "dark_plus";
        editor = {
          bufferline = "multiple";
          color-modes = true;
          line-number = "relative";
        };
        editor.cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };
        editor.indent-guides = {
          render = false;
          character = "╎";
          skip-levels = 1;
        };
        editor.search = {
          smart-case = true;
          wrap-around = true;
        };
        editor.statusline = {
          left = ["mode" "spinner" "file-name"];
          center = ["version-control"];
          right = ["diagnostics" "selections" "position" "total-line-numbers" "file-encoding"];
        };
        keys.normal = {
          "A-ç" = "switch_to_uppercase";
          "ç" = "switch_to_lowercase";
        };
      };
    };
    kakoune.enable = true;
    neovim.enable = true;
    vim.enable = true;
  };
}
