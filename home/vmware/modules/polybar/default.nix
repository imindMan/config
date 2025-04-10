{ config, lib, pkgs, inputs, ...}: {
  xdg.configFile."polybar".source = ./polybar;
  services.polybar = {
      enable = true;
      script = "polybar &";
      package = pkgs.polybar.override {
        mpdSupport = true;
        pulseSupport = true;
      };
  };
}
