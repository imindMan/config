{ inputs, lib, config, pkgs, ... }: {
  home.packages = with pkgs; [
     nerd-fonts.fira-code
     hello 
     pay-respects
     xclip
     any-nix-shell
     pfetch-rs
     python314
     lua51Packages.lua 
     lua51Packages.luarocks-nix
     tree
     rustup
     gcc
     tealdeer
     tree-sitter
     nodejs_23
     librsvg
  ];
  programs.fd.enable = true;
  programs.lazygit.enable = true;
  fonts.fontconfig.enable = true;
}
