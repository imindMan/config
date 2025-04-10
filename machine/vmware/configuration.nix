# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  # boot.loader.grub.efiSupport = true;
  # boot.loader.grub.efiInstallAsRemovable = true;
  # boot.loader.efi.efiSysMountPoint = "/boot/efi";
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/nvme0n1"; # or "nodev" for efi only

  networking.hostName = "imindMan-machine"; # Define your hostname.
  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # Set your time zone.
  time.timeZone = "Asia/Ho_Chi_Minh";

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  #console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  #   useXkbConfig = true; # use xkb.options in tty.
  #};
    # Enable the X11 windowing system.
  services.xserver.enable = true;


  # Configure keymap in X11
  services.xserver.xkb.layout = "us";
  services.xserver.xkb.options = "eurosign:e,caps:escape";
  services.displayManager = {
      sddm.enable = true;
      defaultSession = "none+i3";
  };
  services.xserver.desktopManager = {
    xterm.enable = false;
  };
  services.xserver.windowManager.i3 = {
    enable = true;
    extraPackages = with pkgs; [
      i3lock-color
    ];
  };

  services.gvfs.enable = true;
  programs.dconf.enable = true;
  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound.
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.package = pkgs.pulseaudioFull;
  hardware.pulseaudio.support32Bit = true;
  # OR
  security.rtkit.enable = true;
  # services.pipewire = {
  #    enable = true;
  #    alsa.enable = true;
  #    alsa.support32Bit = true;
  #    pulse.enable = true;
  # };
  # Enable touchpad support (enabled default in most desktopManager).
  services.pipewire.enable = lib.mkForce false;
  # services.libinput.enable = true;

  programs.fish.enable = true;
  programs.nix-ld.enable = true;
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.dev-vons = {
      isNormalUser = true;
      extraGroups = [ "wheel" "audio" "video" ]; # Enable ‘sudo’ for the user.
      shell = pkgs.fish;
  };

  # programs.firefox.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh = {
     enable = true;
     ports = [ 22 ];
     settings = {
       PasswordAuthentication = true;
       AllowUsers = null; # Allows all users by default. Can be [ "user1" "user2" ]
       UseDns = true;
       X11Forwarding = false;
       PermitRootLogin = "prohibit-password"; # "yes", "without-password", "prohibit-password", "forced-commands-only", "no"
     };
  };

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  system.copySystemConfiguration = true;

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  environment.systemPackages = with pkgs; [
  #   vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
      (callPackage ./sddm-package.nix {})
      wget
      home-manager
      alsa-utils
      open-vm-tools
      pavucontrol
      pkg-config
      alsa-lib
      openssl
      libsForQt5.qt5.qtgraphicaleffects
  ];
  services.displayManager.sddm.theme = "sugar-candy";
  system.stateVersion = "24.11"; # Did you read the comment?
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}

