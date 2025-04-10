{ inputs, pkgs, lib, config, ...}: {
  programs.kitty = {
     enable = true;
     font = {
       name = "FiraCode Nerd Font";
       size = 14;
     };
     shellIntegration.enableFishIntegration = true;
     themeFile = "tokyo_night_night";
     settings = {
       window_border_width = 2;
       window_margin_width = 3;
       window_padding_width = 15;
       enabled_layouts = "all";
     };
     keybindings = {
       "ctrl+equal" = "change_font_size all +2.0";
       "ctrl+minus" = "change_font_size all -2.0";
     };
     extraConfig = ''
	    mouse_map ctrl+left release grabbed,ungrabbed mouse_handle_click link
     '';
   };
}
