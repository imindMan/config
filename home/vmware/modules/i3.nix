{ config, pkgs, lib, inputs, ...}: {
    xsession.windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
      extraConfig = ''
        default_border pixel 3
      '';
      config = {
        modifier = "Mod4";
        gaps = {
          inner = 10;
          outer = 5;
        };
        keybindings = let 
          modifier = config.xsession.windowManager.i3.config.modifier;
        in lib.mkOptionDefault {
          "${modifier}+r" = "exec ${pkgs.rofi}/bin/rofi -show drun";
          "${modifier}+q" = "kill";
          "${modifier}+x" = "exec ~/.config/i3/i3lock";
        };
        terminal = "kitty";
        defaultWorkspace = "workspace number 1";
        fonts = {
          names = [ "FiraCode Nerd Font Regular" ];
          size = 14.0;
        };
        startup = [
          { command = "nitrogen --restore"; always = true; notification = false; }
          { command = "polybar &"; always = true; notification = false; }
        ];
        bars = [];
        colors = {
          focused = {
            background = "#285577";
            childBorder = "#7dcfff";
            border = "#7dcfff";
            indicator = "#292d2e";
            text = "#c0caf5";
          };
          unfocused = {
            background = "#285577";
            childBorder = "#3d59a1";
            border = "#3d59a1";
            indicator = "#292d2e";
            text = "#a9b1d6";
          };
        };
        window = {
          titlebar = false;
        };
      };
    };
}
