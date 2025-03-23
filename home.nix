{ inputs, lib, config, pkgs, ... }: {
  imports = [
    ./modules
    ./home-packages.nix
    inputs.nixvim.homeManagerModules.nixvim
  ];
        
  home = {
      username = "nixos";
      homeDirectory = "/home/nixos";
  };
      
  programs.home-manager.enable = true;
  
  systemd.user.startServices = "sd-switch";
  home.stateVersion = "24.11";
}
