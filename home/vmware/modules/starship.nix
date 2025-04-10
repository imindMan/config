{ inputs, lib, pkgs, config, ...}: {
  programs.starship = {
     enable = true;
     enableFishIntegration = true;
     settings = {
      format = lib.concatStrings [
        "$directory"
        "$git_branch"
        "$git_status"
        "$git_metrics"
        "$nix_shell"
        "$cmd_duration"
        "$line_break"
        "$character"
      ];
      character = {
	      success_symbol = "[󰘧](bold green)";
	      error_symbol = "[󰘧](bold red)";
      };
      directory = {
        substitutions = {
          "~" = " ";
	        "Documents" = " ";
	        "Downloads" = " ";
	        "Music" = " ";
	        "Pictures" = " ";
        };
	      truncation_length = 3;
	      truncation_symbol = "…/";
      };
      git_branch = {
        symbol = "";
        format = "[$symbol $branch ](fg:#769ff0)";
      };
      git_status.format = "[$all_status$ahead_behind ](fg:#769ff0)";

      git_metrics = {
        disabled = false;
        format = "[+$added](fg:#73daca)[ ]()[-$deleted](fg:#f7768e)[ ]()";
      };
      nix_shell = {
        disabled = false;
       };
     };
    
   };
}
