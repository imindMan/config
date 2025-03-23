{ inputs, lib, config, pkgs, ... }: {
  home.packages = with pkgs; [
     fira-code-nerdfont
     hello 
     pay-respects
     xclip
     any-nix-shell
     pfetch-rs
     python314
     lua51Packages.lua 
     lua51Packages.luarocks-nix
  ];
  fonts.fontconfig.enable = true;
}
