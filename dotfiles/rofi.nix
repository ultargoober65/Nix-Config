{ config, pkgs, ... }:

let
  # Helper to handle raw Rofi configuration strings/values
  inherit (config.lib.formats.rasi) mkLiteral;
in
{
  programs.rofi = {
    enable = true;
    # Convert the configuration block
    extraConfig = {
      modi = "drun,run,window";
      show-icons = true;
      icon-theme = "Papirus";
      drun-display-format = "{name}";
    };

    # Convert the CSS/RASI theme block
    theme = {
      "@theme" = "/dev/null";

      /* Core window styling */
      "window" = {
        height = mkLiteral "80%";
        width = mkLiteral "20%";
        background-color = mkLiteral "rgba(30, 30, 46, 0.9)"; /* Catppuccin Mocha Base */
        border = mkLiteral "2px";
        border-color = mkLiteral "rgba(203, 166, 247, 0.9)"; /* Mauve border */
        border-radius = mkLiteral "12px";
        padding = mkLiteral "20px";
      };

      /* The wrapper around everything */
      "mainbox" = {
        background-color = mkLiteral "transparent";
        spacing = mkLiteral "15px";
      };

      /* The search bar container */
      "inputbar" = {
        background-color = mkLiteral "rgba(49, 50, 68, 0.9)";
        text-color = mkLiteral "#ffffff";
        border-radius = mkLiteral "8px";
        padding = mkLiteral "10px 15px";
      };

      "prompt" = {
       enabled = false;
      };

      /* The text entry field */
      "entry" = {
        background-color = mkLiteral "transparent";
        text-color = mkLiteral "#cdd6f4";
        placeholder = "i want app uwu";
      };

      /* the list */
      "listview" = {
        background-color = mkLiteral "transparent";
        columns = 1;
        spacing = mkLiteral "8px";
      };

      "element normal.normal, element alternate.normal" = {
        background-color = mkLiteral "transparent";
      };

      /* Individual list rows */
      "element" = {
        background-color = mkLiteral "#ffa200";
        text-color = mkLiteral "#cdd6f4";
        padding = mkLiteral "8px 12px";
        border-radius = mkLiteral "20px";
      };

      "element selected" = {
        background-color = mkLiteral "rgb(203, 166, 247)"; /* Solid Mauve */
        text-color = mkLiteral "rgb(17, 17, 27)";        /* Dark Crust */
      };

      /* The text inside the row */
      "element-text" = {
        background-color = mkLiteral "transparent";
        text-color = mkLiteral "#ffffff";
        vertical-align = mkLiteral "0.5";
      };

      "element-text selected" = {
        text-color = mkLiteral "#000000";
      };

      /* The icon inside the row */
      "element-icon" = {
        background-color = mkLiteral "transparent";
        size = mkLiteral "24px";
        margin = mkLiteral "0px 10px 0px 0px";
      };

      "case-indicator" = {
        enabled = false;
      };
    };
  };
}
