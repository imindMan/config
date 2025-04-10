{ inputs, lib, config, pkgs, ...}: {
    programs.fastfetch = {
        enable = true;
        settings = {
            logo = {
                type = "small";
              };

              modules = [
                "os"
                "wm"
                "terminal"
                "terminalfont"
                "shell"
                "editor"
                "cpu"
                "weather"
                { 
                  type = "colors";
                  symbol = "circle";
                }
              ];

          };
      };
  }
