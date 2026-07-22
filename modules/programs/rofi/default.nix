{
  config,
  lib,
  pkgs,
  host,
  ...
}:
let 
  inherit (import ../../../hosts/${host}/variables.nix) terminal;
  inherit (lib) getExe;
  inherit (config.lib.formats.rasi) mkLiteral;
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
          terminal = "${getExe pkgs.${terminal}}";
          drun-display-format = "{icon} {name}";
          location = 0;
          disable-history = false;
          hide-scrollbar = true;
          display-drun = "   Apps ";
          display-run = "   Run ";
          display-window = "   Window";
          sidebar-mode = true;

          theme = {
            "window" = {
              height = 360;
              border = 3;
            };

            "inputbar" = {
              children = map mkLiteral ["prompt" "entry"];
              border-radius = 5;
              padding = 2;
            };

            "prompt" = {
              padding = 6;
              border-radius = 3;
              margin = mkLiteral "20px 0px 0px 20px";
            };

            "textbox-prompt-colon" = {
              expand = false;
              str = ":";
            };

            "entry" = {
              padding = 6;
              margin = mkLiteral "20px 0px 0px 10px";
              placeholder = "Search";
            };

            "listview" = {
              border = mkLiteral "0px 0px 0px";
              padding = mkLiteral "6px 0px 0px";
              margin = mkLiteral "10px 0px 0px 20px";
              columns = 2;
            };

            "element" = {
              padding = 5;
            };

            "element-icon" = {
              size = 25;
            };

            "mode-switcher" = {
              spacing = 0;
            };

            "button" = {
              padding = 10;
            };
          };

        };

      };
    })
  ];
}