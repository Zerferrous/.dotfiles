{
  lib,
  pkgs,
  ...
}:
{
  home-manager.sharedModules = [
    (_: {
      programs.rofi = {
        enable = true;
      };
    })
  ];
}