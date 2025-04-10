{ inputs, lib, config, pkgs, ... }: {
  home.packages = with pkgs; [
     nerd-fonts.fira-code
     hello 
     pay-respects
     xclip
     any-nix-shell
     pfetch-rs
     python314
     python312Packages.pip
     lua51Packages.lua 
     lua51Packages.luarocks-nix
     tree
     rustup
     gcc
     tealdeer
     tree-sitter
     nodejs_23
     librsvg
     brave
     nitrogen
     lxappearance
     neovide
     xfce.thunar
     grc
     wget
     xdotool
     tty-clock
     porsmo
     xfce.mousepad
     selectdefaultapplication
     trashy
     gnumake 
     cmake
     libnotify
     ffmpeg
  ];
  programs.fd.enable = true;
  programs.lazygit.enable = true;
  fonts.fontconfig.enable = true;
}
