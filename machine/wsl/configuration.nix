# Edit this configuration file to define what should be installed on
 # your system. Help is available in the configuration.nix(5) man page, on
 # https://search.nixos.org/options and in the NixOS manual (`nixos-help`).
 
 # NixOS-WSL specific options are documented on the NixOS-WSL repository:
 # https://github.com/nix-community/NixOS-WSL
 
 { inputs, config, lib, pkgs, ... }:
 
 {
   imports = [
     # include NixOS-WSL modules
     # i used flake here but i didn't remember the true name of the
     # package in the system 
     # i had splitted the setup so this is basically unusable in wsl
    # so this here is just for reference
     inputs.nixos-wsl.nixosModules.default 
   ];
   environment.systemPackages = [ pkgs.home-manager ];
   nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
   wsl.enable = true;
   wsl.defaultUser = "nixos";
   programs.fish.enable = true;
   users.users.nixos.shell = pkgs.fish;
   # This value determines the NixOS release from which the default
   # settings for stateful data, like file locations and database versions
   # on your system were taken. It's perfectly fine and recommended to leave
   # this value at the release version of the first install of this system.
   # Before changing this value read the documentation for this option
   # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
   system.stateVersion = "24.11"; # Did you read the comment?
   nix.settings.experimental-features = [ "nix-command" "flakes" ];
   programs.nix-ld.enable = true;
 }
