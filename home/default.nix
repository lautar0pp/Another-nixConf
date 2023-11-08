{ config, pkgs, ... }:

{
  imports = [
   ./i3
   ./programs
   ./rofi
   ./nvim
   ./emacs
  ];
  programs = {
   bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = {
     ns = "sudo nixos-rebuild switch --flake ~/nixos-config/.#desktop";
    };
   };
   git = {
    enable = true;
    userName = "lautar0pp";
    userEmail = "lautaro_RL@outlook.com";
   };
   kitty = {
     enable = true;
     settings = {
      background_opacity = "0.8";
      dynamic_background_opacity = "yes";
      enable_audio_bell = false;
      hide_window_decorations = "titlebar-only";
      window_padding_width = 5;
     };
    };
  };
  # TODO please change the username & home direcotry to your own
  home = {
   username = "lauhkz";
   homeDirectory = "/home/lauhkz";
   packages = with pkgs; [
    neofetch
    discord

    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    fzf # A command-line fuzzy finder

    # misc
    tree
    which
    gawk
    gnupg

    # productivity
    btop  # replacement of htop/nmon
    slack
    gnome.file-roller
    ranger

    # system tools
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb
  ];

  stateVersion = "23.05";
  };

  

  # Packages that should be installed to the user profile.


  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
