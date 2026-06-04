 { config, pkgs, ... }:

{
 programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        height = 30;
        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "clock" ];

        clock = {
          format-alt = "{:%a, %d. %b  %H:%M}";
        };
      };
    };

    style = ''
      window#waybar {
          background: rgb(45, 1, 1);
          color: white;
          border-radius: 15px;
          border: 3px solid #b3352c;
      }

      #workspaces button {
          padding: 0 8px;
          background: transparent;
          color: white;
      }

      #workspaces button:hover {
          border: 0px solid transparent;         
      }

      #workspaces button.active {
          background: rgb(187, 66, 53);
          padding: 0 20px;
          border-radius: 15px;
          transition: 0.1s;
          border: 2px solid salmon;
      }

      #clock {
          background-color: transparent;
      }
    '';
  };
}
