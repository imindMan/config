{ inputs, lib, config, pkgs, ...}: {
    programs.yazi = {
        enable = true;
        enableFishIntegration = true;
      };
  }
