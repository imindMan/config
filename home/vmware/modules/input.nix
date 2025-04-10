{ config, lib, pkgs, inputs, ...}: {
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-unikey 
    ];
  };
}
