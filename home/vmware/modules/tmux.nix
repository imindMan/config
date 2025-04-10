{ inputs, lib, config, pkgs, ...}: {
    programs.tmux = {
        enable = true;
        baseIndex = 1;
        keyMode = "vi";
        mouse = true;
        extraConfig = ''
          set-option -sa terminal-features ',xterm-256color:RGB'
          set -g pane-base-index 1
          set-window-option -g pane-base-index 1 
          set-option -g renumber-windows on
          set -g detach-on-destroy off 
          set -g allow-passthrough all
        '';
        plugins = with pkgs; [

          {
              plugin = tmuxPlugins.resurrect;
              extraConfig = ''
                set -g @resurrect-strategy-nvim 'session'
                set -g @resurrect-processes 'ssh w3m'
              '';
          }
          {
              plugin = tmuxPlugins.continuum;
              extraConfig = ''
                set -g @continuum-restore 'on'
              '';
            }
          tmuxPlugins.yank
          tmuxPlugins.vim-tmux-navigator
          { plugin = inputs.minimal-tmux.packages.${pkgs.system}.default;
            extraConfig = ''
              set -g @minimal-tmux-use-arrow true
              set -g @minimal-tmux-right-arrow ""
              set -g @minimal-tmux-left-arrow ""
            '';
          }
        ];
      };
  }
