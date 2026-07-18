{
  lib,
  pkgs,
  ...
}:
{
  home-manager.sharedModules = [
    (_: {
      programs.alacritty = {
        enable = true;
      };
    })
  ];
}