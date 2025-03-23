{ inputs, lib, config, pkgs, ...}: {
  
  programs.gh = {
     enable = true;
     gitCredentialHelper.enable = true;
     gitCredentialHelper.hosts = [ "https://github.com" ];
     settings = {
      git_protocol = "https";
      prompt = "enabled";
     };
   };
}
