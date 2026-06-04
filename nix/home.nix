{ config, pkgs, ... }:

{
  # Replace "24.11" with your actual NixOS version (e.g., "23.11" or "24.05")
  home.stateVersion = "25.11"; 

  # Your user packages go here
  home.packages = with pkgs; [
    git
    htop
  ];
 
  gtk = {
    enable = true;
    colorScheme = "dark";
    };

  imports =
    [ 
      ../dotfiles/zsh.nix
      ../dotfiles/hyprland.nix
      ../dotfiles/waybar.nix
      ../dotfiles/hyprpaper.nix
      ../dotfiles/kitty.nix
      ../dotfiles/rofi.nix
    ];





 }

