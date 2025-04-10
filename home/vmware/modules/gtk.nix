{ config, lib, inputs, pkgs, ...}: {
  gtk = {
      enable = true;
      font = {
        name = "FiraCode Nerd Font Regular";
        size = 14;
        package = pkgs.nerd-fonts.fira-code;
      };
      cursorTheme = {
        name = "WhiteSur Cursors";
        package = pkgs.whitesur-cursors;
      };
      iconTheme = {
        name = "candy-icons";
        package = pkgs.candy-icons;
      };
      theme = {
        package = pkgs.tokyonight-gtk-theme;
        name = "Tokyonight-Dark";
      };
  };
}
