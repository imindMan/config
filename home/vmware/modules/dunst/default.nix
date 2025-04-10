{ config, lib, pkgs, inputs, ...}: {
  services.dunst = {
    enable = true;
    configFile = ./dunstrc; 
  };
}
