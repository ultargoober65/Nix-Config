{ config, pkgs, inputs, ... }:

{

 environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  pkgs.neovim
  pkgs.kitty
  pkgs.prismlauncher
  pkgs.protontricks
  pkgs.winetricks
  pkgs.r2modman
  pkgs.vesktop
  pkgs.qbittorrent
  pkgs.fastfetch
  pkgs.hyprlauncher
  pkgs.hyprpaper
  pkgs.hyprpolkitagent
  pkgs.gparted
  pkgs.localsend
  pkgs.xp-pen-deco-01-v2-driver
  hyprshot
  inputs.zen-browser.packages.${pkgs.system}.default
  inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
  ranger
  atool
  p7zip
  zip
  unzip
  gnutar
  krita
  nwg-look
  qt6Packages.qt6ct
  ];

  ##############
  #### apps ####
  ##############
  
  programs.xppen.enable = true;

  programs.zsh.enable = true;

  programs.hyprland = {
  enable = true;
  withUWSM = true;
  xwayland.enable = true;
  };

  programs.steam = {
  enable = true;
  };

  programs.git = {
  enable = true;
  };

  programs.waybar = {
  enable = true;
  };

  programs.kdeconnect = {
  enable = true;
  };

  programs.localsend = {
  enable = true;
  };
}
