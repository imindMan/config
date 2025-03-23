{ inputs, lib, config, pkgs, ...}: {
  programs.zathura = {
    enable = true;
    options = {
      default-bg               =    "#1a1b26";
      default-fg               =    "#a9b1d6";

      statusbar-fg             =    "#a9b1d6";
      statusbar-bg             =    "#24283b";

      inputbar-bg              =    "#1a1b26";
      inputbar-fg              =    "#73daca";

      notification-bg          =    "#1a1b26";
      notification-fg          =    "#73daca";

      notification-error-bg    =    "#1a1b26";
      notification-error-fg    =    "#f7768e";

      notification-warning-bg  =    "#1a1b26";
      notification-warning-fg  =    "#f7768e";

      highlight-color          =    "#e0af68";
      highlight-active-color   =    "#9aa5ce";

      completion-bg            =    "#24283b";
      completion-fg            =    "#a9b1d6";

      completion-highlight-fg  =    "#9aa5ce";
      completion-highlight-bg  =    "24283b";

      recolor-lightcolor       =    "#16161e";
      recolor-darkcolor        =    "#a9b1d6";

      recolor                  =    "true";
      recolor-keephue          =    "false";
    };
  };
}
