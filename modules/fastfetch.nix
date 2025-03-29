{ inputs, lib, config, pkgs, ...}: {
    programs.fastfetch = {
        enable = true;
        settings = {
            logo = {
                source = ./logo.ans;
                height = 20;
              };

              modules = [
                "break"
                "break"
                "break"
                "break"
                "os"
                "terminal"
                "terminalfont"
                "shell"
                "editor"
                "cpu"
                "weather"
                "break"
                "break"
                { 
                  type = "colors";
                  symbol = "circle";
                }
              ];

          };
      };
  }
