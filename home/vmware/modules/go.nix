{ config, lib, pkgs, inputs, ...}: {
  programs.go = {
    enable = true;
    goPath = ".go";
  };
}
