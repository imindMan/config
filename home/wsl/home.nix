{ inputs, lib, config, pkgs, ... }: {
  imports = [
    ./modules
    ./home-packages.nix
  ];
        
  home = {
      username = "nixos";
      homeDirectory = "/home/nixos";
  };


  programs.home-manager.enable = true;
  
  home.stateVersion = "24.11";
}
