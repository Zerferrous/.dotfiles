{
  lib,
  pkgs,
  host,
  ...
}:
let 
  inherit (import ../../../hosts/${host}/variables.nix) terminal;
in
{
  home-manager.sharedModules = [
    (_: {
      programs.rofi = {
        enable = true;

        extraConfig = {
          modi = "drun,run,window";
          lines = 5;
          show-icons = true;
          terminal = "${terminal}";
          drun-display-format = "{icon} {name}";
          location = 0;
          disable-history = false;
          hide-scrollbar = true;
          display-drun = "   Apps ";
          display-run = "   Run ";
          display-window = "   window";
          display-Network = " 󰤨  Network";
          sidebar-mode = true;
        };

      };
    })
  ];
}