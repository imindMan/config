{ config, lib, pkgs, inputs, ...}: {
    programs.btop = {
        enable = true;
        settings = {
          color_theme = "tokyo-night";
          theme_background = true;
          truecolor = true;
        };
      };
  }
