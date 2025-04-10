{ inputs, lib, config, pkgs, ...}: {
    programs.helix = {
     enable = true;
     settings = {
       theme = "tokyonight";
       editor = {
         smart-tab.enable = true;
         cursor-shape = {
           insert = "bar";
           normal = "block";
           select = "underline";  
         };
         indent-guides = {
           render = true;
           character = "╎";
           skip-levels = 1;
         };
         line-number = "relative";
         true-color = true;
         shell = [ "fish" ];
         bufferline = "multiple";
         cursorline = true;
         lsp.display-messages = true;
         whitespace.render.tab = "all";
         whitespace.characters = {
            tab = "→";
            tabpad = "·";
         };
       };
     };
     
   };
}
