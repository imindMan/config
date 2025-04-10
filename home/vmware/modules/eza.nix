{ inputs, lib, config, pkgs, ... }: {
   programs.eza = {
     enable = true;
     enableFishIntegration = true;
   };
}
