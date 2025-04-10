{ inputs, lib, config, pkgs, ... }: {
  imports = [
    ./modules
    ./home-packages.nix
  ];
        
  home = {
      username = "dev-vons";
      homeDirectory = "/home/dev-vons";
  };

  programs.home-manager.enable = true;
  
  home.stateVersion = "24.11";
}
