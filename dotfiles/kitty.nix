{ config, pkgs, ... }:

{
programs.kitty = {
    enable = true;
    themeFile = "Catppuccin-Mocha";

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };

    settings = {
      remember_window_size  = "yes";
      initial_window_width  = 640;
      initial_window_height = 400;
      window_padding_width  = 8;
      confirm_os_window_close = 0;

      tab_bar_edge = "top";
      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";

      cursor_shape = "beam";
      cursor_blink_interval = 0;
      copy_on_select = "yes";
      scrollback_lines = 5000;
      cursor_trail = 1;
      
      enable_audio_bell = "no";
      sync_to_monitor = "yes";
    };

    keybindings = {
      "ctrl+shift+t" = "new_tab_with_cwd";
      "ctrl+shift+enter" = "new_window_with_cwd";
      "ctrl+shift+right" = "next_tab";
      "ctrl+shift+left" = "previous_tab";
    };

    extraConfig = ''
      mouse_hide_wait 3.0
    '';
  };
}
