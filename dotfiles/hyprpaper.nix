{ config, pkgs, ... }:

{
 services.hyprpaper = {
    enable = true;
    settings = {
      splash = false;
      wallpaper = [
        {
          monitor = "DP-4";
          path = "~/Pictures/wallpapers/active"; 
        }
      ];
    };
  };
}
