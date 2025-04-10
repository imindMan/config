{ inputs, lib, config, pkgs, ...}: {
	programs.fish = {
     enable = true;
     generateCompletions = true;
     interactiveShellInit = ''
        set fish_greeting # Disable greeting
        alias ls='eza'
        alias l='eza -l'
        alias ll='eza -la'
        alias cat='bat'
        alias vim='nvim'
        alias rm='rm -i'
        alias rp='trash'
        fish_add_path ~/.go/bin/
        fish_add_path ~/.cargo/bin/
        set -g EDITOR nvim
        pay-respects fish --alias | source
        starship init fish | source
        any-nix-shell fish --info-right | source
     '';    
   };
}
