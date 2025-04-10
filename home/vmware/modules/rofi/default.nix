{ inputs, lib, config, pkgs, ...}: {
  xdg.configFile."rofi".source = ./rofi;
  programs.rofi = {
      enable = true;
  };
}
