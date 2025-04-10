{ inputs, lib, config, pkgs, ...}: {
	programs.fzf = {
     enable = true;
     enableFishIntegration = true;
     defaultOptions = [
      " --color=fg:#c0caf5,bg:#1a1b26,hl:#bb9af7"
	    "--color=fg+:#c0caf5,bg+:#1a1b26,hl+:#7dcfff"
	    "--color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff" 
	    "--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a" 
     ];
   };
}
